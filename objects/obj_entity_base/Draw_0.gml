draw_self()

if alarm_get(3) != -1 { // -1 = alarm has stopped
	draw_self_color(c_white, alarm_get(3)%4);
}