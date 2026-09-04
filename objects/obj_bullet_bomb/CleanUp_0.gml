if !instance_exists(owner) {
	owner = self;
}
spawner = create_spawner(owner, 0.1, 0.1, 2, obj_bullet_default)
spawner.follow_owner = false;
spawner.x = x;
spawner.y = y;
spawner.bullet_speed = 5;
spawner.spread = 360;
spawner.volley_amount = 5;