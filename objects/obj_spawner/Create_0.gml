/// @desc Setup
_time_rate = fire_rate;
_time_dur = fire_duration;

is_firing = true;

/// @desc Turns off the spawner
function stop() {
	is_firing = false;
	_time_rate = 0;
	_time_dur = 0; 
	instance_destroy();
}

function update_timers() {
	_time_dur -= dt_seconds();
	_time_rate -= dt_seconds();
}

/// @desc The degrees to space out each bullets
function __spacing_angle(n = volley_amount, theta = spread) {
	return theta/n;
}

