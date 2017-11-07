/// @description Attack state

//image_speed = 0.3;

//Attack triggers when enemy gets close to player
//gives player till frame 3 to react
if animation_hit_frame(2) {
	//make code more readable
	var _damage = 1;
	var _knockback = 4;
	var _life = 1;
	create_hitbox(s_blob, x, y-8, 0, _life, [], _damage, _knockback);
	//replace with blob hitbox sprite
}

//(image_number - 1) the last frame
if animation_hit_frame(image_number - 1) {
	state_ = blob.idle;
	//reset sprite and alarm
	sprite_index = s_blob;
	alarm[1] = 2*game_get_speed(gamespeed_fps); //2 second cooldown on attacks
}