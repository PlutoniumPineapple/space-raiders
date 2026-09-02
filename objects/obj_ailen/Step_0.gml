timer-=dt_seconds();

if timer <= 0 {
	timer = time;
	
	spawner = instance_create_depth(x, y, depth,
	spawner_wave, {
		radius : 360,
		fire_rate : 1,
		fire_duration : 10,
	})
	
	//array_push(spawners, spawner);
	
}