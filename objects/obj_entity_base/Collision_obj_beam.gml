if not invincible and other.owner != self.id and !other.dead {
	hp--;
	
	invincible = true;
	iframe_timer = iframe_dur
	
	alarm_set(3, iframe_dur*game_get_speed(gamespeed_fps))
}