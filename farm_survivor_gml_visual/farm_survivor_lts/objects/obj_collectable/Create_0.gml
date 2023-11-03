/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 1CEDAD47
/// @DnDComment : // Create shadow object to follow.
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "_shadow"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "obj_shadows"
/// @DnDArgument : "layer" ""Shadows""
/// @DnDSaveInfo : "objectid" "obj_shadows"
var _shadow = instance_create_layer(x + 0, y + 0, "Shadows", obj_shadows);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2EA5F27E
/// @DnDComment : // Set shadow owner.
/// @DnDArgument : "expr" "self"
/// @DnDArgument : "var" "_shadow.owner_object"
_shadow.owner_object = self;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 23A61AFB
/// @DnDComment : // Set shadows image scale.
/// @DnDInput : 2
/// @DnDArgument : "expr" "0.5"
/// @DnDArgument : "expr_1" "0.5"
/// @DnDArgument : "var" "_shadow.image_xscale"
/// @DnDArgument : "var_1" "_shadow.image_yscale"
_shadow.image_xscale = 0.5;
_shadow.image_yscale = 0.5;