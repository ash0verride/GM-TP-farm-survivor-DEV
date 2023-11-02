/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1061A679
/// @DnDComment : // Define a function to execture the shooting attack.
/// @DnDArgument : "funcName" "shooting_attack"
function shooting_attack() 
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 61E61DAB
	/// @DnDComment : // If an enemy is found...
	/// @DnDParent : 1061A679
	/// @DnDArgument : "obj" "nearest_enemy"
	var l61E61DAB_0 = false;
	l61E61DAB_0 = instance_exists(nearest_enemy);
	if(l61E61DAB_0)
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7491838B
		/// @DnDComment : // Get the direction from the hero to the enemy.
		/// @DnDParent : 61E61DAB
		/// @DnDArgument : "var" "_direction"
		/// @DnDArgument : "value" "point_direction(x, y, nearest_enemy.x, nearest_enemy.y)"
		var _direction = point_direction(x, y, nearest_enemy.x, nearest_enemy.y);
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0EBED4DD
		/// @DnDComment : // Get the angle we should start creating bullets aiming towards.
		/// @DnDParent : 61E61DAB
		/// @DnDArgument : "var" "_angle_difference"
		/// @DnDArgument : "value" "(global.shooting[? "number_of_shots"] - 1) * 20"
		var _angle_difference = (global.shooting[? "number_of_shots"] - 1) * 20;
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 56248E94
		/// @DnDComment : // The starting angle.
		/// @DnDParent : 61E61DAB
		/// @DnDArgument : "var" "_angle"
		/// @DnDArgument : "value" "-_angle_difference / 2"
		var _angle = -_angle_difference / 2;
	
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 07CA6011
		/// @DnDComment : // Repeat the following code for each bullet we need to spawn.
		/// @DnDParent : 61E61DAB
		/// @DnDArgument : "times" "global.shooting[? "number_of_shots"]"
		repeat(global.shooting[? "number_of_shots"])
		{
			/// @DnDAction : YoYo Games.Random.Choose
			/// @DnDVersion : 1
			/// @DnDHash : 7CFD5791
			/// @DnDComment : // Choose a random sound effect.
			/// @DnDInput : 3
			/// @DnDParent : 07CA6011
			/// @DnDArgument : "var" "_sound"
			/// @DnDArgument : "option" "snd_lightning_throw_1"
			/// @DnDArgument : "option_1" "snd_lightning_throw_2"
			/// @DnDArgument : "option_2" "snd_lightning_throw_3"
			_sound = choose(snd_lightning_throw_1, snd_lightning_throw_2, snd_lightning_throw_3);
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 6BB0D931
			/// @DnDComment : // Play that sound effect.
			/// @DnDParent : 07CA6011
			/// @DnDArgument : "soundid" "_sound"
			audio_play_sound(_sound, 0, 0, 1.0, undefined, 1.0);
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 6EC23A9E
			/// @DnDComment : // Create a bullet and assign it to temp variable _bullet.
			/// @DnDParent : 07CA6011
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "_bullet"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_hero_bullet"
			/// @DnDSaveInfo : "objectid" "obj_hero_bullet"
			var _bullet = instance_create_layer(x + 0, y + 0, "Instances", obj_hero_bullet);
		
			/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 30F81D59
			/// @DnDComment : // Change values of the bullet...
			/// @DnDApplyTo : _bullet
			/// @DnDParent : 07CA6011
			with(_bullet) {
				/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
				/// @DnDVersion : 1
				/// @DnDHash : 6AA54454
				/// @DnDComment : // Set the bullet's direction.
				/// @DnDParent : 30F81D59
				/// @DnDArgument : "direction" "_direction + _angle"
				direction = _direction + _angle;
			
				/// @DnDAction : YoYo Games.Movement.Set_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 2A6C1037
				/// @DnDComment : // Set speed of the bullet.
				/// @DnDParent : 30F81D59
				/// @DnDArgument : "speed" "15"
				speed = 15;
			
				/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
				/// @DnDVersion : 1
				/// @DnDHash : 3AE471D2
				/// @DnDComment : // Rotate the bullet to face it's moving direction.
				/// @DnDParent : 30F81D59
				/// @DnDArgument : "angle" "direction"
				image_angle = direction;
			}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 189CEA0C
			/// @DnDComment : // Increment the angle for the next bullet.
			/// @DnDParent : 07CA6011
			/// @DnDArgument : "expr" "20"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "_angle"
			_angle += 20;
		}
	}
}