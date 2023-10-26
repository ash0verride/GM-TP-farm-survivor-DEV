/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 6B220A80
/// @DnDComment : Create exit button.
/// @DnDArgument : "xpos" "-200"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos" "1080 - 150"
/// @DnDArgument : "objectid" "obj_button_exit"
/// @DnDArgument : "layer" ""Buttons""
/// @DnDSaveInfo : "objectid" "obj_button_exit"
instance_create_layer(x + -200, 1080 - 150, "Buttons", obj_button_exit);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 2D560E1D
/// @DnDComment : Create resume button.
/// @DnDArgument : "xpos" "200"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos" "1080 - 150"
/// @DnDArgument : "objectid" "obj_button_resume"
/// @DnDArgument : "layer" ""Buttons""
/// @DnDSaveInfo : "objectid" "obj_button_resume"
instance_create_layer(x + 200, 1080 - 150, "Buttons", obj_button_resume);