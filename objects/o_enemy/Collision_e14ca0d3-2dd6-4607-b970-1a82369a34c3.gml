if health_ <= 0 exit;

if hurtbox_entity_can_be_hit_by(other) {
	//'other' refers to the collision hitbox in this case
	invincible_ = true;
	alarm[0] = global.one_second/3;
	health_ -= other.damage_;
	state_ = enemy.hit;
	var _knockback_direction = point_direction(other.x, other.y, x, y);
	//could even change this hit effect into an array of different hit effects and cycle or choose from random so 's_hit_effect' is different every time
	create_animation_effect(s_hit_effect, x, y-8, 1, true);
	set_movement(_knockback_direction, other.knockback_);
}