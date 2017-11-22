//------------------------------
// GAME OBJECT
// Persistent object (created in r_init room)
//------------------------------
global.one_second = game_get_speed(gamespeed_fps);
instance_create_layer(0, 0, "Instances", o_input);

//------------------------------
// PLAYER VARIABLES
//------------------------------
global.player_max_health = 4;
global.player_health = global.player_max_health;

global.player_max_stamina = 2;
global.player_stamina = global.player_max_stamina;

global.player_crystals = 0;
