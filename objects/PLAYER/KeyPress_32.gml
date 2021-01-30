if(ventUnlocked == true)
{
	ds_list_delete(inv, 0);
	ventUnlocked = false;

	with(VENT) {
	sprite_index = Open_Vent;
	image_index = 0;
	}
}