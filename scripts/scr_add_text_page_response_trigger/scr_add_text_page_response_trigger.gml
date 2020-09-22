// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
///@description add a page
///@arg sentence to add
function scr_add_text_page_response_trigger(argument0, argument1) {
	my_text[array_length_1d(my_text)] = argument0;
	my_text[array_length_1d(my_text)] = argument1;
	response_trigger = array_length_1d(my_text) - 2
}
