/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 238A1D0E
/// @DnDComment : Declare list_shuffle function for use in Visual.
/// @DnDArgument : "funcName" "list_shuffle"
/// @DnDArgument : "arg" "_lsit"
function list_shuffle(_lsit) 
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 7F248A94
	/// @DnDParent : 238A1D0E
	/// @DnDArgument : "code" "$(13_10)ds_list_shuffle(_lsit);$(13_10)"
	
	ds_list_shuffle(_lsit);
}