if hurtbox_entity_can_be_hit_by(other) {
	//instance_create_layer( x, y, "Instances", o_grass_destroyed); //replaced with script
	instance_destroy();
	create_animation_effect(s_grass_effect, x, y, random_range(0.4, 0.8), true);
}