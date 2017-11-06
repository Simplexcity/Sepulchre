/// @description Sword Attack State

image_speed = 1.1;

//Checks for last frame of animation, then resets back to move state
if animation_hit_frame(image_number - 1) {
	state_ = player.move;
}