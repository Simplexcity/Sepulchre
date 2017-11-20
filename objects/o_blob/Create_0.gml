event_inherited();
initialize_movement_entity(0.5, 0.5, o_solid);

enum blob {
	hit, //this first one must stay as hit to match its parent
	idle,
	move,
	attack,
	wait
}

starting_state_ = blob.idle;
state_ = starting_state_;

image_index = 0; //start at first frame
image_xscale = choose(1, -1); //randomly face left or right

//Anywhere between 0 and 1 second alarm
alarm[1] = random_range(0, 1) * global.one_second;
