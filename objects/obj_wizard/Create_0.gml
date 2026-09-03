// Inherit the parent event
event_inherited();

timer = 0; time = 0.5

function random_attack() {
	s = noone;
	num = random(100);
	if num <= 30 {
	    s = bomb()
		s.spread = 90
		s.volley_amount = 3
	}
	else if num > 30 and num <= 60 {
	    s = tachyon()
	}
	else if num > 60 {
	    s = basic(time)
		s.bullet_speed = 2
		s.spread = 90
		s.volley_amount = 10
	}
	
	return s;
}
