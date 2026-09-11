if !instance_exists(owner) {
	owner = self;
}
spawner = create_spawner(owner, 0.1, 0.1, 20, obj_bullet_bounce)
spawner.x = x;
spawner.y = y;
spawner.bullet_speed = 5;
spawner.rotation = 5+random(5);
spawner.direction = random(360);
spawner.spread = 360;
spawner.volley_amount = 5
spawner.follow_owner = false;