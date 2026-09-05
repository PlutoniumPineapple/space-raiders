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

if InputPressed(INPUT_VERB.GAMMA_ATTACK) {
	spawner = create_spawner(self, 0.1, 5, 20, bullet)
}
