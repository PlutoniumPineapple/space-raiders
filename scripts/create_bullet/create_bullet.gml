function create_bullet(_dir, _spd, _lifetime, _bullet_type = obj_bullet_default){
	_owner = OWNER_TYPE.ENEMY;
	if entity_type == OWNER_TYPE.PLAYER {_owner = OWNER_TYPE.PLAYER}
	
	instance_create_depth(x, y, depth, _bullet_type, {
			lifetime : _lifetime,
			speed : _spd,
			direction : _dir,
			owner : _owner,
	});

	
}