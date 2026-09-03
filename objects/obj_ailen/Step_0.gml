timer-=dt_seconds();

if timer <= 0 {
	timer = time;
	
	spawn = basic(time);
	spawn.direction = direction-90
}