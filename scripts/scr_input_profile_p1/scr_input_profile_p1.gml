///scr_input_profile_p1
function scr_input_profile_p1() {

	//			SET VARIABLES FOR KEYBOARD


	//	KEYBOARD CONTROLS



	key_up_pressed = keyboard_check_pressed(ord("W"));
	key_right_pressed = keyboard_check_pressed(ord("D"));
	key_down_pressed = keyboard_check_pressed(ord("S"));
	key_left_pressed = keyboard_check_pressed(ord("A"));

	key_up = keyboard_check(ord("W"));
	key_right = keyboard_check(ord("D"));
	key_down = keyboard_check(ord("S"));
	key_left = keyboard_check(ord("A"));

	key_interact = keyboard_check_pressed(ord("E"));
	key_interact_held = keyboard_check(ord("E"));
	key_interact_released = keyboard_check_released(ord("E"));
	key_item_0 = keyboard_check_pressed(ord("H"));
	key_item_0_held = keyboard_check(ord("H"));
	key_item_0_released = keyboard_check_released(ord("H"));
	key_item_1 = keyboard_check_pressed(ord("J"));
	key_item_1_held = keyboard_check(ord("J"))
	key_item_1_released = keyboard_check_released(ord("J"));
	key_item_2 = keyboard_check_pressed(ord("K"));
	key_item_2_held = keyboard_check(ord("K"));
	key_item_2_released = keyboard_check_released(ord("K"));
	key_run_pressed = keyboard_check_pressed(vk_space);
	key_run_held = keyboard_check_direct(vk_space);
	key_run_released = keyboard_check_released(vk_space);
	key_aim = keyboard_check(vk_shift);
	key_aim_released = keyboard_check_released(vk_shift);
	key_inv_pressed = keyboard_check_pressed(ord("Q"));

	//check axis
	scr_check_input_axis();

	scr_check_dir();



}
