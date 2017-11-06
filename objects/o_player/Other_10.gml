/// @description Move State

//------------------------------
// LOCAL _VARIABLES
//------------------------------
image_speed = 0;

// Set controller 0 dead zone
if gamepad_is_connected(0) gamepad_set_axis_deadzone(0, 0.1);

// inputs
var _x_input_l = keyboard_check(ord("A")) || (gamepad_axis_value(0, gp_axislh) < 0);
var _x_input_r = keyboard_check(ord("D")) || (gamepad_axis_value(0, gp_axislh) > 0);
var _y_input_u = keyboard_check(ord("W")) || (gamepad_axis_value(0, gp_axislv) < 0);
var _y_input_d = keyboard_check(ord("S")) || (gamepad_axis_value(0, gp_axislv) > 0);

// directions
var _x_input = _x_input_r - _x_input_l; //1=right,0=both(no movement),-1=left
var _y_input = _y_input_d - _y_input_u; //same as above but on y axis
// TODO: Make gamepad joystick work at same time as keyboard controls above (just overrides them right now if it's plugged in)
if gamepad_is_connected(0) {
	_x_input = gamepad_axis_value(0, gp_axislh);
	_y_input = gamepad_axis_value(0, gp_axislv);
}

var _input_direction = point_direction(0, 0, _x_input, _y_input);
var _attack_input = keyboard_check_pressed(ord("X")) || gamepad_button_check_pressed(0, gp_face1);
var _roll_input = keyboard_check_pressed(ord("Z")) || gamepad_button_check_pressed(0, gp_face2);
roll_direction_ = direction_facing_*90; 

//------------------------------
// MOVEMENT (AND PLAYER SPRITE)
//------------------------------
if _x_input == 0 && _y_input == 0 {
	image_index = 0;
	image_speed = 3; //this is weird... 
	apply_friction_to_movement_entity();
} else {
	image_speed = 1; //gogogog
	if _x_input != 0 {
		image_xscale = sign(_x_input); //flip the sprite (1 or -1)
	}
	
	get_direction_facing(_input_direction);
	add_movement_maxspeed(_input_direction, accelleration_, max_speed_);
	//roll_direction_ = direction_facing_*90; //update again incase facing changed
	roll_direction_ = _input_direction;
}

//------------------------------
// ATTACK (SWORD)
//------------------------------
if _attack_input == true {
	image_index = 0; //start at first frame
	state_ = player.sword;
}


// PORKCHOP SANDWICHES!!!!

//------------------------------
// EVADE (ROLL)
//------------------------------
if _roll_input == true {
	image_index = 0; //start at first frame
	state_ = player.evade;
}


move_movement_entity(false); //no bounch
