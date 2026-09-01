function create_bullet(_dir, _spd, _lifetime, _bullet_type = obj_bullet_default){
	owner = undefined;
	if self != obj_player {
		owner = OWNER_TYPE.ENEMY
	} else {
		owner = OWNER_TYPE.PLAYER
	}
	
	instance_create_depth(x, y, depth, _bullet_type, {
			lifetime : _lifetime,
			speed : _spd,
			direction : _dir,
			owner : owner,
	});

	
}