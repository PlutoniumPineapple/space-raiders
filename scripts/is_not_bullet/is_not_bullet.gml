function is_not_bullet(obj){
	if !instance_exists(obj) {return false}
	
	if obj != obj_bullet_default and object_get_parent(obj.object_index) != obj_bullet_default {return false}
	
	return true
}