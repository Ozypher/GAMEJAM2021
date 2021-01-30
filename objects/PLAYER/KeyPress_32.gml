/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 391297BA
/// @DnDArgument : "var" "ventUnlocked"
/// @DnDArgument : "value" "true"
if(ventUnlocked == true)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 7E63C2A9
	/// @DnDParent : 391297BA
	/// @DnDArgument : "code" "ds_list_delete(inv, 0);$(13_10)ventUnlocked = false;"
	ds_list_delete(inv, 0);
	ventUnlocked = false;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 27E66FD8
	/// @DnDApplyTo : {VENT}
	/// @DnDParent : 391297BA
	/// @DnDArgument : "spriteind" "Open_Vent"
	/// @DnDSaveInfo : "spriteind" "Open_Vent"
	with(VENT) {
	sprite_index = Open_Vent;
	image_index = 0;
	}
}