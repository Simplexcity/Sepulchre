//------------------------------
// STEP EVENT
//------------------------------

depth = -y;

//finite state machine, executes actions one at a time (states match enumes and user event#)
event_user(state_);

//sprite lookup table (see create event)
sprite_index = sprite_[state_, direction_facing_]; //sprite update

