if (mouse_check_button_pressed(mb_left)) {
	if (collision_point(mouse_x, mouse_y, BUTTON_START, true, false)) {
		image_index = 1;
	}
}