/// @description Insert description here
// You can write your code in this editor
if (ENEMY.dead == 1){
	draw_set_color(c_yellow);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_ext_transformed((camera_get_view_width(0)/2),(camera_get_view_height(0)/2-80),"Press R to Respawn",0,1000,3,6,0);
}
if (ENEMY.dead == 0){
	draw_set_halign(fa_left);
}