if hurtbox_entity_can_be_hit_by(other) {
	instance_create_layer( x, y, "Instances", o_grass_destroyed);
	instance_destroy();
}