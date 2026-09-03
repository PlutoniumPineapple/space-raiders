function tachyon(dir = direction) {
	create_spawner(self, 0.5, 0.5, 100, obj_bullet_tachyon)
}

function bomb(dir = direction) {
	spawn = create_spawner(self, 0.1, 0.1, 1, obj_bullet_bomb)
	spawn.bullet_speed = 5
}