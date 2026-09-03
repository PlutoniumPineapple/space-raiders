//x=obj_player.sprite_height
//y=obj_player.sprite_width
direction = obj_player.direction
image_angle=direction

offset = 50
dir = 35
spawner1= noone
spawner2= noone

//x = dcos(direction) * offset
//y = dsin(direction) * offset

x = obj_player.x
y = obj_player.y

if instance_exists(obj_player) and instance_exists(spawner1) and instance_exists(spawner2) {
spawner1.x=self.x + offset
spawner2.x=self.x + offset
}


//if InputPressed(INPUT_VERB.SHOOT){
//	spawner1 = create_spawner(self, 0.01, 0.01, 20, obj_player_bullet)
//	spawner1.bullet_speed = 10
//	spawner1.x = x + lengthdir_x(offset, direction+dir)
//	spawner1.y = y + lengthdir_y(offset, direction+dir)
	
//	spawner2 = create_spawner(self, 0.01, 0.01, 20, obj_player_bullet)
//	spawner2.bullet_speed = 10
//	spawner2.x = x + lengthdir_x(-offset, direction + dir +110)
//	spawner2.y = y + lengthdir_y(-offset, direction + dir +110)
	
	
//}