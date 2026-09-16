// Inherit the parent event
event_inherited();

if instance_exists(owner) {
	direction = owner.direction;
} else {
	dead = true;
}