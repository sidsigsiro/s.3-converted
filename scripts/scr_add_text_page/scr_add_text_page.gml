// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
///@description add a page
///@arg sentence to add
function scr_add_text_page(argument0) {
	if my_text[0] == "" {
		my_text[0] = argument0;
	} else {
		my_text[array_length_1d(my_text)] = argument0;
	}
}
