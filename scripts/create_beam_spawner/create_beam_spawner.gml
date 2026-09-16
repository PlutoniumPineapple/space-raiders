function create_beam_spawner(
// Required
_owner, _duration, _beam_lifetime, 

// Optionals
_beam_type = obj_beamspawn,
_spread = 0,
_rotation = 0,
_volley_amount = 1,

){
	spawner = instance_create_depth(_owner.x, _owner.y, _owner.depth+1, _beam_type, {
		
		direction : _owner.direction,
		
		owner : _owner.id,
		duration : _duration,
		beam_lifetime : _beam_lifetime,
		
		beam_type : _beam_type,
		spread : _spread,
		rotation : _rotation,
		volley_amount : _volley_amount,
	})
	
	return spawner
}