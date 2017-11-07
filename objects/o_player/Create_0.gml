 //------------------------------
// INIT SCRIPTS
//------------------------------
initialize_movement_entity(0.5, 1, o_solid);
initialize_hurtbox_entity();

//------------------------------
// GLOBAL VARIABLES_
//------------------------------
image_speed = 0;
accelleration_ = 0.4;
max_speed_ = 1.5;
roll_speed_ = 3;
direction_facing_ = dir.right;
roll_direction_ = 0;
global.player_health = 4;
 

//------------------------------
// ARRAYS
//------------------------------
enum player {
	move, //0
	sword, //1
	evade //2
} 

enum dir {
	right, //0
	up, //1
	left, //2
	down  //3
}

//Sets initial state
state_ = player.move;

//sprite move lookup table 
sprite_[player.move, dir.right] = s_player_run_right;
sprite_[player.move, dir.up] = s_player_run_up;
sprite_[player.move, dir.left] = s_player_run_right;
sprite_[player.move, dir.down] = s_player_run_down;

//sprite attack lookup table 
sprite_[player.sword, dir.right] = s_player_attack_right;
sprite_[player.sword, dir.up] = s_player_attack_up;
sprite_[player.sword, dir.left] = s_player_attack_right;
sprite_[player.sword, dir.down] = s_player_attack_down;

//sprite evade lookup table 
sprite_[player.evade, dir.right] = s_player_roll_right;
sprite_[player.evade, dir.up] = s_player_roll_up;
sprite_[player.evade, dir.left] = s_player_roll_right;
sprite_[player.evade, dir.down] = s_player_roll_down;
