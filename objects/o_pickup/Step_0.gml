//Depth handling
//Create a z axis and add the speed
z_ += z_speed_;
z_speed_ += gravity_; //add gravity to the z axis

//If pickup reaches the 'ground'
if z_ >= 0 {
	can_pickup_ = true;
	//making the item bounce by inverting the speed
	var _bounce_ammount = 0.4;
	z_speed_ = -z_speed_ * _bounce_ammount;
	
	//stop bouncing
	if z_speed_ > -1 {
		z_speed_ = 0;
		z_ = 0;
	}
}