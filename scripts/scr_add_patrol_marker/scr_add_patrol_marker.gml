// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_add_patrol_marker(argument0){
	
	if patrol_marker[0] = noone {
		patrol_marker[0] = argument0;
	} else {
		patrol_marker[array_length_1d(patrol_marker)] = argument0;
	}
	number_of_patrol_markers++;
}