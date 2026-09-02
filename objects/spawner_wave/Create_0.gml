/// @desc Setup - Wave

// Inherit the parent event
event_inherited(); // Links the stopping and starting funcs to here as well

// in case a value over 360 is inputted
radius = clamp(radius, 0, 360)

/// @desc The degrees to space out each line of bullets, allowing for an evenly spaced out wave
function __spacing_angle(amount = bullet_amount, _rad = radius) {
	return _rad/(amount-1)
}