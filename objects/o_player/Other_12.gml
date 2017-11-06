/// @description Evade State

image_speed = 1.1;
 
set_movement(roll_direction_, roll_speed_); //sets direction, speed
move_movement_entity(false); //again, no bounce

//(image_number - 1) the last frame
if animation_hit_frame(image_number - 1) {
	state_ = player.move;
}