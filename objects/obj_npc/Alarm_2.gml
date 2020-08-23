/// @description Insert description here
// used for ai status

if temp_marker != noone {
	with(temp_marker) {
		instance_destroy();
	}
	temp_marker = noone;
}
	