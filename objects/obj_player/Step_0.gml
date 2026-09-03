/// @desc Update
image_angle = direction
direction = point_direction(x, y, mouse_x, mouse_y) //InputDirection(image_angle, INPUT_CLUSTER.NAVIGATION)

hspd = Stat.movespeed*InputX(INPUT_CLUSTER.NAVIGATION);
vspd = Stat.movespeed*InputY(INPUT_CLUSTER.NAVIGATION);


if InputPressed(INPUT_VERB.GAMMA_ATTACK) {
	spawner = create_spawner(self, 0.1, 5, 20, bullet)
}
