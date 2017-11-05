///@param direction
var _direction = argument0;

direction_facing_ = round(_direction/90); //to match enum directions
if direction_facing_ == 4 {
	direction_facing_ = 0
}