/// @desc Setup

_time_rate = fire_rate;
_time_dur = fire_duration;
is_firing = true;

/// @desc Activates the spawner
function fire() {
	is_firing = true;
	_time_rate = fire_rate;
	_time_dur = fire_duration; 
}

/// @desc Turns off the spawner
function stop() {
	is_firing = false;
	_time_rate = 0;
	_time_dur = 0; 
}