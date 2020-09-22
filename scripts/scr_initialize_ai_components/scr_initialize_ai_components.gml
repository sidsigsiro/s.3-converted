///@arg {macro} COLOUR MACRO
/// @arg {script} ai_personality
/// @arg {script} ai_default_status
function scr_initialize_ai_components(argument0, argument1, argument2) {
	
	ai_team = argument0;				//team colour macro
	ai_personality = argument1;				//temperment script
	ai_status = argument2;
	ai_status_default = ai_status
	my_path = path_add();
	ai_melee_range = 15;
	temp_marker = noone;
	pm = 0
	patrol_marker[0] = noone;
	number_of_patrol_markers = 0;
	
	my_text_box = noone;

	create_text_box = noone;

	my_text[0] = ""
	
}