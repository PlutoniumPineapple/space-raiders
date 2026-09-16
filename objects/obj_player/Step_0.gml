/// @desc Update

image_angle = direction
direction = aim_direction()

hspd = Stat.movespeed*InputX(INPUT_CLUSTER.NAVIGATION);
vspd = Stat.movespeed*InputY(INPUT_CLUSTER.NAVIGATION);

if InputPressed(INPUT_VERB.SHOOT){
	audio_play_sound(snd_shoot, 1, false)
	spawner1 = player_bullet()
	spawner1.follow_owner = false;
	spawner1.x = x + lengthdir_x(offset, direction + angle)
	spawner1.y = y + lengthdir_y(offset, direction + angle)
	
	spawner2 = player_bullet()
	spawner2.follow_owner = false;
	spawner2.x = x - lengthdir_x(-offset, direction - angle)
	spawner2.y = y - lengthdir_y(-offset, direction - angle)
}

if InputPressed(INPUT_VERB.SPECIAL) {
	spawner = create_beam_spawner(self, 5, 5, obj_player_beam)
	spawner.follow_owner = true;
}

if hp != 2 {
	alpha = 1
}
else {
	alpha = Approach(alpha, Tween_Cos(0, 1, current_time), 0.1)
} 

