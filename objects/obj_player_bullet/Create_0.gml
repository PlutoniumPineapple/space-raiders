var _device = InputPlayerGetDevice();

// mouse 
if !InputDeviceIsGamepad(_device) {
	goal_dir = point_direction(x, y, mouse_x, mouse_y)
} 

// controller
else if InputDeviceIsGamepad(_device) and InputDeviceIsConnected(_device) {
	joystick_dir = InputDirection(direction, INPUT_CLUSTER.AIM);
	goal_dir = joystick_dir
}

