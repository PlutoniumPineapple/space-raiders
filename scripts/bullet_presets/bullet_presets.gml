function tachyon(dir = direction) {
	return create_spawner(self, 0.5, 0.5, 100, obj_bullet_tachyon)
}

function bomb(dir = direction) {
	spawn = create_spawner(self, 0.1, 0.1, 1, obj_bullet_bomb)
	spawn.bullet_speed = 5
	return spawn
}

function player_bullet() {
	spawner = create_spawner(self, 0.01, 0.01, 20, obj_player_bullet)
	spawner.bullet_speed = 10
	return spawner;
}

function basic(time=10) {
	spawner = create_spawner(self, time, time, 100, obj_bullet_default)
	spawner.spread = 60;
	spawner.volley_amount = 3;
	spawner.bullet_speed = 8
	return spawner;
}
function bigboi(time=10) {
	//yo, I dont know how to set up a bullet
	spawner = create_spawner(self, time, time, 100, obj_bigboi_bullet)
	spawner.spread = 270;
	spawner.volley_amount = 15;
	spawner.bullet_speed = 1
	return spawner;
}