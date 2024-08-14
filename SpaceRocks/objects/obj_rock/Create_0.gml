/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 300E24F0
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "speed"
speed = 1;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 7CC2626E
/// @DnDArgument : "var" "direction"
/// @DnDArgument : "max" "360"
direction = (random_range(0, 360));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 2B47C492
/// @DnDArgument : "var" "image_angle"
/// @DnDArgument : "max" "360"
image_angle = (random_range(0, 360));