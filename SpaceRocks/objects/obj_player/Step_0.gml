/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 2BFF1974
/// @DnDArgument : "key" "vk_up"
var l2BFF1974_0;
l2BFF1974_0 = keyboard_check(vk_up);
if (l2BFF1974_0)
{
	/// @DnDAction : YoYo Games.Movement.Add_Motion
	/// @DnDVersion : 1
	/// @DnDHash : 61978216
	/// @DnDParent : 2BFF1974
	/// @DnDArgument : "dir" "image_angle"
	/// @DnDArgument : "speed" "0.1"
	motion_add(image_angle, 0.1);
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 78C1E197
/// @DnDArgument : "key" "vk_left"
var l78C1E197_0;
l78C1E197_0 = keyboard_check(vk_left);
if (l78C1E197_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1DCE4D3D
	/// @DnDParent : 78C1E197
	/// @DnDArgument : "expr" "4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "image_angle"
	image_angle += 4;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 03B3CE0C
/// @DnDArgument : "key" "vk_right"
var l03B3CE0C_0;
l03B3CE0C_0 = keyboard_check(vk_right);
if (l03B3CE0C_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0A58D266
	/// @DnDParent : 03B3CE0C
	/// @DnDArgument : "expr" "-4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "image_angle"
	image_angle += -4;
}

/// @DnDAction : YoYo Games.Movement.Wrap_Room
/// @DnDVersion : 1
/// @DnDHash : 29F18353
move_wrap(1, 1, 0);

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 52C496B6
var l52C496B6_0;
l52C496B6_0 = mouse_check_button_pressed(mb_left);
if (l52C496B6_0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 53A686CA
	/// @DnDParent : 52C496B6
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_bullet"
	/// @DnDSaveInfo : "objectid" "obj_bullet"
	instance_create_layer(x + 0, y + 0, "Instances", obj_bullet);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 74C7729E
	/// @DnDParent : 52C496B6
	/// @DnDArgument : "soundid" "snd_shoot"
	/// @DnDArgument : "pitch" "random_range(0.8, 1.2)"
	/// @DnDSaveInfo : "soundid" "snd_shoot"
	audio_play_sound(snd_shoot, 0, 0, 1.0, undefined, random_range(0.8, 1.2));

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 755E1472
	/// @DnDParent : 52C496B6
	/// @DnDArgument : "var" "powerup"
	/// @DnDArgument : "value" "1"
	if(powerup == 1)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 514967AB
		/// @DnDParent : 755E1472
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "bullet"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "obj_bullet"
		/// @DnDSaveInfo : "objectid" "obj_bullet"
		var bullet = instance_create_layer(x + 0, y + 0, "Instances", obj_bullet);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 37706E0A
		/// @DnDParent : 755E1472
		/// @DnDArgument : "expr" "10"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "bullet.direction"
		bullet.direction += 10;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 432A9FC6
		/// @DnDParent : 755E1472
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "bullet"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "obj_bullet"
		/// @DnDSaveInfo : "objectid" "obj_bullet"
		var bullet = instance_create_layer(x + 0, y + 0, "Instances", obj_bullet);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3C1065A6
		/// @DnDParent : 755E1472
		/// @DnDArgument : "expr" "-10"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "bullet.direction"
		bullet.direction += -10;
	}
}