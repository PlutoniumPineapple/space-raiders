function is_not_projectile(obj){
	if !instance_exists(obj) {return false}
	
	if (obj != obj_bullet_default or obj != obj_beam)
	and (object_get_parent(obj.object_index) != obj_bullet_default 
	or object_get_parent(obj.object_index) != obj_beam) {return false}
	
	return true
}