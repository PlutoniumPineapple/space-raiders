timer-=dt_seconds();

if timer <= 0 {
	timer = time;
	spawn = random_attack();
	if instance_exists(spawn) {
		spawn.direction = point_direction(x, y, obj_player.x, obj_player.y)
	}
}