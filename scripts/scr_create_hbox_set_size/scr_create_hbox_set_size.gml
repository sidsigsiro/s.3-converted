///scr_create_hbox();
function scr_create_hbox_set_size(argument0, argument1, argument2, argument3, argument4, argument5) {

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

	hbox[argument5].image_xscale = (argument2/sprite_get_width(obj_hbox.image_xscale))*sprite_get_width(sprite_index);

	hbox[argument5].image_yscale = (argument3/sprite_get_height(obj_hbox.image_yscale))*sprite_get_height(sprite_index);

	if argument_count < 5 {
		hbox[argument5].hbox_script = scr_hbox_hurt;
	} else {
		hbox[argument5].hbox_script = argument4;
	}


}
