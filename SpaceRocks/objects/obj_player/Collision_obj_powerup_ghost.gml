/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 217C05B7
/// @DnDArgument : "expr" "2"
/// @DnDArgument : "var" "powerup"
powerup = 2;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 4BAD9800
/// @DnDArgument : "steps" "10 * 60"
alarm_set(0, 10 * 60);

/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 1A7154D2
/// @DnDArgument : "colour" "$5EFFFFFF"
image_blend = $5EFFFFFF & $ffffff;
image_alpha = ($5EFFFFFF >> 24) / $ff;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 10F01153
/// @DnDApplyTo : other
with(other) instance_destroy();