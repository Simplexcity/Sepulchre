//@arg hitbox
var _hitbox = argument0;
//Am i inside this targets hitbox array? does he got beef?
var _is_target = is_target(object_index, _hitbox.targets_);
//am i NOT invicible and inside your hit list?
return !invincible_ and _is_target;