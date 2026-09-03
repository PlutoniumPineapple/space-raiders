function create_bullet(
_dir, _spd, 

_lifetime = 10,
_bullet_type = obj_bullet_default, 
_owner = self.id
){
	if _dir = undefined or _dir = NaN {_dir=0}
	if _spd = undefined or _spd = NaN {_spd=0}
	
	return instance_create_depth(x, y, depth-1, _bullet_type, {
			speed : _spd,
			direction : _dir,
			lifetime : _lifetime,
			owner : _owner,
	});
}