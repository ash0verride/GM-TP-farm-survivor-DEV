// Restart alarm.
alarm_set(0, global.enemy_spawn_speed);

// If an instance of obj_upgrade exists then
// that means we are on the upgrade screen...
if(instance_exists(obj_upgrade))
{
	// Exit event, stopping any enemies from spawning.
	exit;
}

// If an instance of obj_upgrade exists then
// that means we are on the upgrade screen...
if(instance_exists(obj_game_over))
{
	// Exit event, stopping any enemies from spawning.
	exit;
}

// If an instance of obj_upgrade exists then
// that means we are on the upgrade screen...
if(instance_exists(obj_template_complete))
{
	// Exit event, stopping any enemies from spawning.
	exit;
}

// Declare a temp variable to hold an enemy type.
// By default this will be the pumpkill enemy.
var _enemy = obj_pumpkill;

// If we are over level 2...
if(global.level > 2)
{
	// Change the enemy type to either
	// pigun or pumpkill.
	_enemy = choose(obj_pigun, obj_pumpkill);
}

// If we are over level 4...
if(global.level > 4)
{
	// Change the enemy type to either
	// pigun, pumpkill or rooster.
	_enemy = choose(obj_pigun, obj_pumpkill, obj_rooster);
}

// We want to spawn enemyes around the player.
// So we first get a random direction (0 to 360).
var _dir = random(360);

// Then we get the position 1200 pixels away
// from the hero on the x axis.
var _x = obj_hero.x + lengthdir_x(1200, _dir);

// Then we get the position 1200 pixels away
// from the hero on the y axis.
var _y = obj_hero.y + lengthdir_y(1200, _dir);

// Create an enemy at that generated positon.
instance_create_layer(_x, _y, "Instances", _enemy);