/// @description Hit logic

if hurtbox_entity_can_be_hit_by(other) {
	
	invincible_ = true;
	alarm[0] = global.one_second * 0.75 ; //invincible for alllmost one second
	global.player_health -= other.damage_;
	//get direction from enemy to player position
	var direction_ = point_direction(other.x, other.y, x, y);
	//knockback in that direction (similar to enemy)
	set_movement (direction_, other.knockback_);
	state_ = player.hit; //then set the state (which is run on the next frame, so have adjusted enemy)
	//event_user(state_); //this will run the state_ (or any user event) immediatly!!!!
}