//------------------------------
// GAME OBJECT
// Persistent object (created in r_init room)
//------------------------------
global.one_second = game_get_speed(gamespeed_fps);
instance_create_layer(0, 0, "Instances", o_input);
