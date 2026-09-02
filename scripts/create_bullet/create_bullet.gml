function create_bullet(_dir, _spd, _lifetime, _bullet_type = obj_bullet_default){
	
	//_caller = self.id

	instance_create_depth(x, y, depth, _bullet_type, {
			lifetime : _lifetime,
			speed : _spd,
			direction : _dir,
			//owner : _caller.entity_type,
	});

	
}