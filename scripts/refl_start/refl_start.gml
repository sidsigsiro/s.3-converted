/// @arg layer
/// @arg camera_used_or_not
function refl_start(argument0, argument1) {
	instance_create_layer(0, 0, argument0, obj_waterrefl);
	global.camera_used = argument1;


}
