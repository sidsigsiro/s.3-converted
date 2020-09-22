/// fd_rectangle_add_velocity(instance id, sprite index, image index, x, y, xscale, yscale, x velocity, y velocity)
function fd_rectangle_add_velocity(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8) {
	// A script for drawing a sprite to the velocity surface of a fluid dynamics rectangle, adding to the content that's already there.
	// instance id: The instance id of the fluid dynamics rectangle.
	// sprite index: The sprite to draw.
	// image index: The image index of the sprite to draw.
	// x, y: The position inside the fluid dynamics rectangle to draw the sprite at.
	// xscale, yscale: The scale to draw at.
	// color: The color blend to draw with.
	// x velocity, y velocity: The velocity that will be added where the sprite is drawn. If the alpha is 0 in the sprite, the
	//     velocity will be 0 at that point. If it's 1, it will be equal to x velocity, y velocity at that point. Anywhere in between will
	//     blend linearly. The parameter values should be kept between -2 and 2.

	with (argument0) {
	    fd_rectangle_set_target(id, FD_TARGET_TYPE.ADD_VELOCITY);
	        var color = make_color_rgb(ceil((clamp(argument7, -1, 1) * 0.125 + 0.5) * 255), ceil((clamp(argument8, -1, 1) * 0.125 + 0.5) * 255), 0);
	        draw_sprite_ext(argument1, argument2, argument3, argument4, argument5, argument6, 0, color, 1);
	    fd_rectangle_reset_target(id);
	}



}
