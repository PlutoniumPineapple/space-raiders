#region Kirk
function tachyon_kirk(time = 1) {
	return create_spawner(self, 0.5, time, 100, obj_bullet_tachyon)
}

function kirk_bomb() {
	spawner = create_spawner(self, 0.1, 0.1, 1, obj_bullet_special_bomb)
	spawner.follow_owner = false;
	spawner.bullet_speed = 1;
	spawner.volley_amount = 9;
	spawner.rotation = 1;
	spawner.spread = 360;
	spawner.direction = random(360);
	return spawner
}

function kirk_bomb_alt() {
	spawner = create_spawner(self, 0.1, 0.1, 1, obj_bullet_bounce_bomb)
	spawner.follow_owner = false;
	spawner.bullet_speed = 1;
	spawner.volley_amount = 9;
	spawner.rotation = 1;
	spawner.spread = 360;
	spawner.direction = random(360);
	return spawner
}

function kirk_basic(time=10) {
	spawner = create_spawner(self, time, time, time, obj_bullet_default)
	spawner.bullet_speed = 5
	spawner.bullet_rotation = 5;
	spawner.volley_amount = 10;
	spawner.spread = 360;
	return spawner;
}

function kirk_setup() {
	spawner = create_spawner(self, time, time, 60, obj_bigboi_bullet)
	spawner.bullet_speed = 2;
	spawner.bullet_rotation = 5;
	spawner.volley_amount = 9;
	spawner.spread = 360;
	return spawner;
}

function kirk_bounce(time=10) {
	spawner = create_spawner(self, time, time, time*3, obj_bullet_bounce)
	spawner.bullet_speed = 4;
	spawner.bullet_rotation = 15;
	spawner.volley_amount = 10;
	spawner.spread = 360;
	return spawner;
}

#endregion


#region Normal
function tachyon(dir = direction) {
	return create_spawner(self, 0.5, 0.5, 100, obj_bullet_tachyon)
}


function bomb(dir = direction) {
	spawn = create_spawner(self, 0.1, 0.1, 1, obj_bullet_bomb)
	spawn.follow_owner = false;
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
#endregion