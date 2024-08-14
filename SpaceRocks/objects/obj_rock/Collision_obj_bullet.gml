/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7A4DD934
/// @DnDArgument : "var" "obj_game.powerup_time"
/// @DnDArgument : "op" "1"
if(obj_game.powerup_time < 0)
{
	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 5F3E9C77
	/// @DnDInput : 2
	/// @DnDParent : 7A4DD934
	/// @DnDArgument : "var" "obj"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "option" "obj_powerup_ghost"
	/// @DnDArgument : "option_1" "obj_powerup_spread"
	var obj = choose(obj_powerup_ghost, obj_powerup_spread);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2F3D2BA1
	/// @DnDParent : 7A4DD934
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj"
	instance_create_layer(x + 0, y + 0, "Instances", obj);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7E1420B0
	/// @DnDParent : 7A4DD934
	/// @DnDArgument : "expr" "20"
	/// @DnDArgument : "var" "obj_game.powerup_time"
	obj_game.powerup_time = 20;
}

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 72A31D2B
/// @DnDArgument : "soundid" "snd_rockdestroy"
/// @DnDArgument : "pitch" "random_range(0.6, 1.1)"
/// @DnDSaveInfo : "soundid" "snd_rockdestroy"
audio_play_sound(snd_rockdestroy, 0, 0, 1.0, undefined, random_range(0.6, 1.1));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7338C6B7
/// @DnDArgument : "expr" "50"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "obj_game.points"
obj_game.points += 50;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 0CF27995
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 7D5481C4
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "where" "1"
/// @DnDArgument : "size" "1"
effect_create_above(0, x + 0, y + 0, 1, $FFFFFF & $ffffff);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 191957E3
/// @DnDArgument : "var" "direction"
/// @DnDArgument : "max" "360"
direction = (random_range(0, 360));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2A8CD7B2
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "spr_rock_big"
if(sprite_index == spr_rock_big)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5D6E1426
	/// @DnDParent : 2A8CD7B2
	/// @DnDArgument : "spriteind" "spr_rock_small"
	/// @DnDSaveInfo : "spriteind" "spr_rock_small"
	sprite_index = spr_rock_small;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 33CDF969
	/// @DnDParent : 2A8CD7B2
	/// @DnDArgument : "function" "instance_copy"
	/// @DnDArgument : "arg" "true"
	instance_copy(true);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 64D0996F
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 115182F8
	/// @DnDParent : 64D0996F
	/// @DnDArgument : "var" "instance_number(obj_rock)"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "12"
	if(instance_number(obj_rock) < 12)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 40ABC236
		/// @DnDParent : 115182F8
		/// @DnDArgument : "spriteind" "spr_rock_big"
		/// @DnDSaveInfo : "spriteind" "spr_rock_big"
		sprite_index = spr_rock_big;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 676B6ACB
		/// @DnDParent : 115182F8
		/// @DnDArgument : "expr" "-100"
		/// @DnDArgument : "var" "x"
		x = -100;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 28C326C3
	/// @DnDParent : 64D0996F
	else
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1E9FCD3A
		/// @DnDParent : 28C326C3
		instance_destroy();
	}
}