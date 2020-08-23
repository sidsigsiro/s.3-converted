 ///scr_input_profile_mouse()
function scr_input_profile_mouse() {

	///scr_input_profile_p1

	//			SET VARIABLES FOR KEYBOARD

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
	key_item_0 = mouse_check_button_pressed(mb_left);
	key_item_0_held = mouse_check_button(mb_left);
	key_item_0_released = mouse_check_button_released(mb_left);
	key_item_1 = mouse_check_button_pressed(mb_right);
	key_item_1_held = mouse_check_button(mb_right);
	key_item_1_released = mouse_check_button_released(mb_right);
	key_item_2 = mouse_check_button_pressed(mb_middle);
	key_item_2_held = mouse_check_button(mb_middle);
	key_item_2_released = mouse_check_button_released(mb_middle);
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
