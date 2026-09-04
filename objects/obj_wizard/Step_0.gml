timer-=dt_seconds();

if timer <= 0 {
	timer = time;
	spawn = random_attack();
	if instance_exists(spawn) {
		spawn.direction = 270
	}
}

if hp <= max_hp/2 {
	time = phase_2_time // phase 2
}