// Inherit the parent event
event_inherited();

timer = 0; 
time = 2
max_hp = hp

phase_2_time = 1.5
phase_3_time = 1

image_xscale = 2
image_yscale = 2

function random_attack() {
	percent = round(random(100)); // I am so sick of fractions:
	var spawner = noone; // init empty
	if percent <= 10 {
		
	}
	
	else if percent > 10 and percent <= 30 {
		var num = random(1);
		if num < 0.5 {
			spawner = kirk_bomb()
		} else {
			spawner = kirk_bomb_alt()
		}
	}
	
	else if percent > 30 and percent <= 60 {
		spawner = basic()
		spawner.volley_amount = 20;
		spawner.bullet_speed = 6;
		spawner.spread = 360;
	}
	
	else if percent > 60 and percent <= 70 {
		spawner = kirk_basic();
		
	}
	
	else if percent > 70 and percent <= 90 {
		spawner = kirk_setup();
	}
	
	else if percent > 90 and percent <= 100 {
		kirk_bounce()
	}
	return spawner;
}


path_start(Path2, 5, path_action_continue, true);