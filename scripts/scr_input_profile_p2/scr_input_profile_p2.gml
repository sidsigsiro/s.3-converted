///scr_input_profile_p1
function scr_input_profile_p2() {

	//			SET VARIABLES FOR KEYBOARD


	//	KEYBOARD CONTROLS



	key_up_pressed = keyboard_check_pressed(vk_up);
	key_right_pressed = keyboard_check_pressed(vk_right);
	key_down_pressed = keyboard_check_pressed(vk_down);
	key_left_pressed = keyboard_check_pressed(vk_left);

	key_up = keyboard_check(vk_up);
	key_right = keyboard_check(vk_right);
	key_down = keyboard_check(vk_down);
	key_left = keyboard_check(vk_left);

	key_interact = keyboard_check_pressed(ord("M"));
	key_item_0 = keyboard_check_pressed(vk.fw_slash);
	key_item_0_held = keyboard_check(vk.fw_slash);
	key_item_0_released = keyboard_check_released(vk.fw_slash);
	key_item_1 = keyboard_check_pressed(vk.period);
	key_item_1_held = keyboard_check(vk.period)
	key_item_1_released = keyboard_check_released(vk.period);
	key_item_2 = keyboard_check_pressed(vk.comma);
	key_item_2_held = keyboard_check(vk.comma);
	key_item_2_released = keyboard_check_released(vk.comma);
	key_run_pressed = keyboard_check_pressed(vk_control);
	key_run_held = keyboard_check_direct(vk_control);
	key_run_released = keyboard_check_released(vk_control);
	key_aim = keyboard_check(vk_alt);
	key_aim_released = keyboard_check_released(vk_alt);
	key_inv_pressed = keyboard_check_pressed(vk_enter);

	//check axis
	scr_check_input_axis();

	scr_check_dir();


}
