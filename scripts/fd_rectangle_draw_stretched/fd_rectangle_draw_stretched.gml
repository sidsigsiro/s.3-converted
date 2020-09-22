/// fd_rectangle_draw_stretched(instance id, x, y, width, height, color, alpha, use interpolation)
function fd_rectangle_draw_stretched(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7) {
	// Draws the fluid dynamics rectangle.
	// instance id: The instance id of the fluid dynamics rectangle.
	// x, y: The pixel position to draw at.
	// width, height: The width and height to draw the fluid dynamics rectangle at.
	// color: The image blending color, the same as color in draw_surface_ext.
	// alpha: The alpha to draw at, the same as alpha in draw_surface_ext.
	// use interpolation: Set this to true if you want linear interpolation to be enabled, and false if you want nearest neighbor to be used instead.

	with (argument0) {
	    fd_rectangle_draw_part(id, 0, 0, sf_material_width, sf_material_height, argument1, argument2, argument3 / sf_material_width, argument4 / sf_material_height, argument5, argument6, argument7);
	}



}
