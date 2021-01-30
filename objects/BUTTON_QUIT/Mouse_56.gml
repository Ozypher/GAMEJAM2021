//Go to first level
if (mouse_check_button_released(mb_left)) {
	if (collision_point(mouse_x, mouse_y, BUTTON_QUIT, true, false)) {
		game_end();
	}
}