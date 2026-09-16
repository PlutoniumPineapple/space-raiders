function create_beam(
_dir,
_width = 1,
_lifetime = 10,
_beam_type = obj_beam, 
_owner = self.id
){
	if _dir = undefined or _dir = NaN {_dir=0}
	
	return instance_create_depth(x, y, depth+1, _beam_type, {
			width : _width,
			direction : _dir,
			lifetime : _lifetime,
			owner : _owner,
	});
}