if not invincible and other.owner != self.id {
	hp--;
	
	invincible = true;
	iframe_timer = iframe_dur;
	
	instance_destroy(other);
}