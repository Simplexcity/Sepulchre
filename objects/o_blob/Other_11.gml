/// @description Idle state

//image_index = 0;
image_speed = 0.3;

//when alarm goes off, sets alarm again, sets state to move and choose a random direction
if alarm[1] <= 0 {
	alarm[1] = random_range(2, 4) * game_get_speed(gamespeed_fps);
	state_ = blob.move;
	direction_ = random(360);
}

blob_attack();