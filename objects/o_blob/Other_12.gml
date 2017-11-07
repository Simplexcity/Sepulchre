/// @description Move state

image_speed = 0.5;

//which direction? use lengthdir to find it
var _x_speed = lengthdir_x(speed_, direction_);

if _x_speed != 0 {
	image_xscale = sign(_x_speed); //map number between 1 and -1
}

if alarm[1] <= 0 {
	//if alarm isnt running, slow thing down
	apply_friction_to_movement_entity();
} else {
	//if its going then add movement
	add_movement_maxspeed(direction_, 0.05, 0.5);
}
//then move it
move_movement_entity(true); //bounce off walls true
//reset the alarm and change to idle when thing stops
if speed_ == 0 {
	alarm[1] = random_range(1, 3) * game_get_speed(gamespeed_fps);
	state_ = blob.idle;
}

blob_attack();