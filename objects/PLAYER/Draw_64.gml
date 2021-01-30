//Draw Inventory
draw_set_color(c_white);
draw_text(5,5,"Inventory:");
for (var i=0; i < ds_list_size(inv); i++) {
	draw_text(5,24 + (24*i), inv[| i]);
}