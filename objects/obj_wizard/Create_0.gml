// Inherit the parent event
event_inherited();

timer = 0; time = 1.25
max_hp = hp

phase_2_time = 0.75

function random_attack() {
	s = noone;
	num = random(120);
	if num <= 30 {
	    s = bomb()
		s.direction = random(360);
		s.spread = 90
		s.volley_amount = 3
	}
	else if num > 30 and num <= 60 {
	    s = tachyon()
	}
	else if num > 60 and num < 90 {
	    s = basic(time)
		s.bullet_speed = 2
		s.spread = 360
		s.volley_amount = 12
	}
	else if num > 99 {
	    s = bigboi(time)
		
	}
	//show_debug_message(num)
	return s;
	
}


path_start(path_wizard, 5, path_action_reverse, true);