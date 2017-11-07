if not instance_exists(o_player) exit; //leave this script if there is no player

var _distance_to_player = point_distance(x, y, o_player.x, o_player.y);

if _distance_to_player < 32 {
	state_ = blob.attack;
	image_index = 0; //reset frame back to zero before attacking
	sprite_index = s_blob_attack;
}
