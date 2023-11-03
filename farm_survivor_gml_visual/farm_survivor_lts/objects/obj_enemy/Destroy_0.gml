/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 4ACFBB52
/// @DnDComment : // Easy way to do drop chances$(13_10)// of different items.$(13_10)$(13_10)// In this case we have 9 in 10 chance of dropping$(13_10)// regular collectibles, and a 1 in 10 chance of$(13_10)// dropping a heart.$(13_10)$(13_10)// We assign the result to _drop.
/// @DnDInput : 10
/// @DnDArgument : "var" "_drop"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "option" "obj_collectable"
/// @DnDArgument : "option_1" "obj_collectable"
/// @DnDArgument : "option_2" "obj_collectable"
/// @DnDArgument : "option_3" "obj_collectable"
/// @DnDArgument : "option_4" "obj_collectable"
/// @DnDArgument : "option_5" "obj_collectable"
/// @DnDArgument : "option_6" "obj_collectable"
/// @DnDArgument : "option_7" "obj_collectable"
/// @DnDArgument : "option_8" "obj_collectable"
/// @DnDArgument : "option_9" "obj_heart"
var _drop = choose(obj_collectable, obj_collectable, obj_collectable, obj_collectable, obj_collectable, obj_collectable, obj_collectable, obj_collectable, obj_collectable, obj_heart);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 0690AF42
/// @DnDComment : // Create the chosen drop.
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "_drop"
instance_create_layer(x + 0, y + 0, "Instances", _drop);