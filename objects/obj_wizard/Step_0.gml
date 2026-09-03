timer-=dt_seconds();

if timer <= 0 {
	timer = time;
	spawn = random_attack();
	if instance_exists(spawn) {
		spawn.direction = direction-90
	}
}