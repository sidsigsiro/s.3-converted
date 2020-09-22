// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
///@description add a response prompt
///@arg response to add
function scr_add_response(response_text) {
	if response[0] == "" {
		response[0] = response_text;
	} else {
		response[array_length_1d(response)] = response_text;
	}
}