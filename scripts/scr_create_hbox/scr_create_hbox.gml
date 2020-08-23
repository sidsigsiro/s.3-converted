///scr_create_hbox();
function scr_create_hbox(argument0, argument1, argument2, argument3, argument4, argument5) {

	///@func scr_create_hitbox(# of hitboxes,)
	///@desc create hitboxes
	///@param x
	///@param y
	///@param x_scale
	///@param y_scale
	///@param hitbox_script
	///@param hbox_#

	hbox[argument5] = instance_create_layer(argument0, argument1, "instance_layer", obj_hbox);

	hbox[argument5].owner = id;
	var xscale = argument2/sprite_get_width(hbox[argument5].sprite_index), 
		yscale = argument3/sprite_get_height(hbox[argument5].sprite_index);
	
	hbox[argument5].image_xscale = (xscale);

	hbox[argument5].image_yscale = (yscale);

	if argument_count < 5 {
		hbox[argument5].hbox_script = scr_hbox_hurt;
	} else {
		hbox[argument5].hbox_script = argument4;
	}


}
