/// @description Runs after everything else has moved
if not instance_exists(target_) exit;
//moves camera object towards player
x = lerp(x, target_.x, 0.1); //10% every frame 
y = lerp(y, target_.y, 0.1);
//pixel perfect, rounding camera position
x = round_n(x, 1/scale_);
y = round_n(y, 1/scale_);
//moves camera viewport
camera_set_view_pos(view_camera[0], x - (width_ / 2), y - 8 - (height_ / 2));