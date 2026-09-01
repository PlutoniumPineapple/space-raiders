/// @desc Update
image_angle = direction
direction = point_direction(x, y, mouse_x, mouse_y) //InputDirection(image_angle, INPUT_CLUSTER.NAVIGATION)

hspd = Stat.movespeed*InputX(INPUT_CLUSTER.NAVIGATION);
vspd = Stat.movespeed*InputY(INPUT_CLUSTER.NAVIGATION);

if InputPressed(INPUT_VERB.SHOOT) or InputRepeat(INPUT_VERB.SHOOT){
	create_bullet(direction, 10, 10)
}

