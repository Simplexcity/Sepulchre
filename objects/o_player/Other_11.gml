/// @description Sword Attack State

image_speed = 1.1;

//Runs this function on frame (1) of the sword attack animation
if animation_hit_frame(1) {
	//verbose values
	var _angle = direction_facing_*90;
	var _life = 3;
	var _damage =1;
	var _knockback = 8;
	var _hitbox = create_hitbox(s_sword_hitbox, x, y, _angle, _life, [o_enemy], _damage, _knockback);

	//If direction facing is dir.up, then minus 4 from hitboxY and exit
	switch direction_facing_ {
		case dir.up: _hitbox.y -= 10; break; //tweak to move hitbox (on up attack)
		default: _hitbox.y -= 8; break;
	}
}

//Checks for last frame of animation, then resets back to move state
if animation_hit_frame(image_number - 1) {
	state_ = player.move;
}

