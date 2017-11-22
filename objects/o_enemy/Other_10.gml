/// @description Hit state

move_movement_entity(true);
apply_friction_to_movement_entity();
//leave this state when enemy comes to a stop
if speed_ == 0 {
	state_ = starting_state_;	
}