function create_spawner(
// Required
_owner, _fire_rate, _fire_duration, _bullet_lifetime, 

// Optionals
_bullet_type = obj_bullet_default,
_spread = 0,
_rotation = 0,
_volley_amount = 1,

){
	spawner = instance_create_depth(_owner.x, _owner.y, _owner.depth-1, obj_spawner, {
		owner : _owner,
		fire_rate : _fire_rate,
		fire_duration : _fire_duration,
		bullet_lifetime : _bullet_lifetime,
		
		bullet_type : _bullet_type,
		spread : _spread,
		rotation : _rotation,
		volley_amount : _volley_amount,
		
	})
	
	return spawner
}