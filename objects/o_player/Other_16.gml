/// @description Hit State
image_index = 0; //start from first frame
move_movement_entity(true); //update player movement (bounce off walls)
apply_friction_to_movement_entity(); //player slows down
 //leave hitstate when player comes to a stop (could also use alarm)
if speed_ == 0 {
	state_ = starting_state_;	
}

