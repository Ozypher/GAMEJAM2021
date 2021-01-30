/// @description Insert description here
// You can write your code in this editor
//respawn code
if(ENEMY.dead == 1 && keyboard_check_pressed(ord("R"))){
	room_restart();
}
if(keyboard_check_pressed(vk_escape)){
	game_end();
}