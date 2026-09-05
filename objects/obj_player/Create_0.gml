// Inherit the parent event
event_inherited();

offset = 20;
angle = 90;

image_xscale /= 2
image_yscale /= 2

Stat = {
	movespeed : 5
}

bullet = obj_player_bullet

function aim_direction() {
	var _device = InputPlayerGetDevice();
	if !InputDeviceIsGamepad(_device) {
		return point_direction(x, y, mouse_x, mouse_y)
	} else if InputDeviceIsGamepad(_device) and InputDeviceIsConnected(_device) {
		// rot_spd = 5;
		joystick_dir = InputDirection(direction, INPUT_CLUSTER.AIM);
		return joystick_dir //Approach(direction, joystick_dir, rot_spd); //point_direction(x, y, _x, _y);
	}
}