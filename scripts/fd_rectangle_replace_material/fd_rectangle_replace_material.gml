/// fd_rectangle_replace_material(instance id, sprite index, image index, x, y, xscale, yscale, color, alpha)
function fd_rectangle_replace_material(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8) {
	// A script for drawing a sprite to the material of a fluid dynamics rectangle, replacing content that's already there.
	// instance id: The instance id of the fluid dynamics rectangle.
	// sprite index: The sprite to draw.
	// image index: The image index of the sprite to draw.
	// x, y: The position inside the fluid dynamics rectangle to draw the sprite at.
	// xscale, yscale: The scale to draw at.
	// color: The color blend to draw with.
	// alpha: The alpha to draw with.

	with (argument0) {
	    fd_rectangle_set_target(id, FD_TARGET_TYPE.REPLACE_MATERIAL);
	        draw_sprite_ext(argument1, argument2, argument3, argument4, argument5, argument6, 0, argument7, argument8);
	    fd_rectangle_reset_target(id);
	}



}
