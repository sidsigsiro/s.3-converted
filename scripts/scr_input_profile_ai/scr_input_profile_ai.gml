///scr_input_profile_mouse()
function scr_input_profile_ai() {

	///scr_input_profile_p1

	//			SET VARIABLES FOR KEYBOARD


	//	KEYBOARD CONTROLS

	key_up_pressed = 0;
	key_right_pressed = 0;
	key_down_pressed = 0;
	key_left_pressed = 0;

	key_up = 0;
	key_right = 0;
	key_down = 0;
	key_left = 0;

	key_interact = 0;
	key_interact_held = 0;
	key_interact_released = 0;
	key_item_0 = 0;
	key_item_0_held = 0;
	key_item_0_released = 0;
	key_item_1 = 0;
	key_item_1_held = 0;
	key_item_1_released = 0;
	key_item_2 = 0;
	key_item_2_held = 0;
	key_item_2_released = 0;
	key_run_pressed = 0;
	key_run_held = 0;
	key_run_released = 0;
	key_aim = 0;
	key_aim_released = 0;
	key_inv_pressed = 0;

	scr_check_input_axis_ai();

	script_execute(ai_status);
	//check target vector

	///if target is 

	//move towards target nice
	//attack target when close enough
	//dodge attacks

	//check axis


	///	INSERT check to override dir, for attacking and such
	scr_check_dir_ai();



}
