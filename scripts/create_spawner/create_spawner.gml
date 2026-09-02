function create_spawner(
fire_rate, fire_duration, // Basics

spread_angle

){
	spawner = instance_create_depth(x, y, depth-1, spawner_spew)
	
	spawner.fire_rate = fire_rate 
	spawner.fire_duration = fire_duration
	
	
	
	
	
	return spawner
}