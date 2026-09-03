/// @desc Stop Firing
if _time_dur <= 0 or (!instance_exists(owner) and is_not_bullet(owner)) {stop()}