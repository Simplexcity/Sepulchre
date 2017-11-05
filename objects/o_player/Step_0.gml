//------------------------------
// LOCAL _VARIABLES
//------------------------------
image_speed = 0;
var _x_input = keyboard_check(vk_right) - keyboard_check(vk_left); //1=right,0=both(no movement),-1=left
var _y_input = keyboard_check(vk_down) - keyboard_check(vk_up); //same as above but on y axis
var _input_direction = point_direction(0, 0, _x_input, _y_input);

//------------------------------
// MOVEMENT (AND PLAYER SPRITE)
//------------------------------
if _x_input == 0 && _y_input == 0 {
	image_index = 0;
	image_speed = 20;
	apply_friction_to_movement_entity();
} else {
	image_speed = 0.6;
	if _x_input != 0 {
		image_xscale = _x_input; //flip the sprite (1 or -1)
	}
	
	get_direction_facing(_input_direction);
	add_movement_maxspeed(_input_direction, accelleration_, max_speed_);
}

//lookup table (see create event)
sprite_index = sprite_[player.move, direction_facing_];
move_movement_entity(false); //no bounch