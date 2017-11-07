if health_ <= 0 exit;

if hurtbox_entity_can_be_hit_by(other) {
	//'other' refers to the collision hitbox in this case
	health_ -= other.damage_;
	state_ = enemy.hit;
	var _knockback_direction = point_direction(other.x, other.y, x, y);
	set_movement(_knockback_direction, other.knockback_);
}
