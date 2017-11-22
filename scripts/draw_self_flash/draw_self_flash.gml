///@arg color
///@arg interval
///@arg alarm

var _color = argument0;
var _interval = argument1;
var _alarm = argument2;
//mod function, turns on and off
if (_alarm % _interval) <= _interval/2 and alarm > 0 {
	//use shader instead of gpu fog later
	gpu_set_fog(true, _color, 0, 1);
	draw_self();
	gpu_set_fog(false, _color, 0, 1); //turn the color off
}
