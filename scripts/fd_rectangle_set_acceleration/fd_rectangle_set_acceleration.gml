/// fd_rectangle_set_acceleration(instance id, x acceleration, y acceleration, [a], [b])
function fd_rectangle_set_acceleration() {
	// Sets the acceleration of the fluid within the fluid dynamics rectangle.
	// Every pixel in the fluid dynamics rectangle will have its acceleration set using one of these two equations:
	// 1. Simplest, no material sampler needed for the shader: acceleration = (x acceleration, y acceleration).
	// 2. Customizable, material sampler needed for the shader: acceleration = (a * m^2 + b * m) * (x acceleration, y acceleration)
	// In the equations above, m represents the mass of the fluid at that pixel, as in how much alpha it has, how visible it is, and will be from 0 to 1.
	// a and b represent the arguments for a and b entered for this script, the same goes for x acceleration and y acceleration. You want to keep
	// the acceleration resulting from the equation somewhere between -1 and 1.
	// instance id: The instance id of the fluid dynamics rectangle.
	// x acceleration: The horizontal acceleration.
	// y acceleration: The vertical acceleration.
	// [a]: Will be used as "a" in the equation for calculating acceleration explained above. You can set this to undefined or omit it if you don't need it.
	// [b]: Will be used as "b" in the equation for calculating acceleration explained above. You can set this to undefined or omit it if you don't need it.

	with (argument[0]) {
	    acceleration_x = argument[1];
	    acceleration_y = argument[2];
    
	    if (argument_count > 3 && !is_undefined(argument[3])) acceleration_a = argument[3]; else acceleration_a = 0;
	    if (argument_count > 4 && !is_undefined(argument[4])) acceleration_b = argument[4]; else acceleration_b = 0;
    
	    if ((acceleration_x == 0 && acceleration_y == 0) || (acceleration_a == 0 && acceleration_b == 0)) {
	        acceleration_type = 0;
	    } else {
	        acceleration_type = 1;
	    }
	}



}
