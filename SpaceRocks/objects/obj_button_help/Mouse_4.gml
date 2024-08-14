/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 11049DAF
event_inherited();

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 6AACB4AA
/// @DnDArgument : "obj" "obj_controls"
/// @DnDSaveInfo : "obj" "obj_controls"
var l6AACB4AA_0 = false;
l6AACB4AA_0 = instance_exists(obj_controls);
if(l6AACB4AA_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7626E5BF
	/// @DnDApplyTo : {obj_controls}
	/// @DnDParent : 6AACB4AA
	with(obj_controls) instance_destroy();
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6961AEEA
else
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 17760197
	/// @DnDParent : 6961AEEA
	/// @DnDArgument : "xpos" "room_width / 2"
	/// @DnDArgument : "ypos" "room_height - 100"
	/// @DnDArgument : "objectid" "obj_controls"
	/// @DnDSaveInfo : "objectid" "obj_controls"
	instance_create_layer(room_width / 2, room_height - 100, "Instances", obj_controls);
}