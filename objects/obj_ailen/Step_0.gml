timer-=dt_seconds();

if timer <= 0 {
	timer = time;
	
	spawner = create_spawner(self, 0.1, 10, 20)
	spawner.rotation = 5;
	
}