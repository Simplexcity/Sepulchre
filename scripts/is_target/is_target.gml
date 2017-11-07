///@arg value
///@arg target_array

var _value = argument0;
var _array = argument1;
var _array_length = array_length_1d(_array);

//starts at zero, then checks thru the array until it finds its value in the array (of any size)
var _index = 0;
repeat _array_length {
	if _value == _array[_index] return true;
	//ancestors children are also targets
	if object_is_ancestor(_value, _array[_index]) return true;
	_index++; //add index and continue looping
}

return false;