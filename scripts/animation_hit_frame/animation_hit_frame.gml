///@arg frame

//pass in frame to check
//gets the game speed and sprite speed, then figures out when u hit the target frame (frames arent whole numbers)
var _frame = argument0;
var _speed = game_get_speed(gamespeed_fps)/sprite_get_speed(sprite_index);
return (image_index >= _frame+1 - image_speed/_speed) and (image_index < _frame+1);
