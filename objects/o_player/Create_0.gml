//------------------------------
// INIT SCRIPTS
//------------------------------
initialize_movement_entity(0.5, 1, o_solid);

//------------------------------
// GLOBAL VARIABLES_
//------------------------------
image_speed = 0;
accelleration_ = 0.5;
max_speed_ = 1.5;
direction_facing_ = dir.right;
global.player_health = 4;


//------------------------------
// ARRAYS
//------------------------------
enum player {
	move
}

enum dir {
	right,
	up,
	left,
	down
}
//sprite move lookup table 
sprite_[player.move, dir.right] = s_player_run_right;
sprite_[player.move, dir.up] = s_player_run_up;
sprite_[player.move, dir.left] = s_player_run_right;
sprite_[player.move, dir.down] = s_player_run_down;
//sprite_index = sprite_[player.move, dir.right];