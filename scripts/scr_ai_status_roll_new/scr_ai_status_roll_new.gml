///scr_ai_status_attack_melee
function scr_ai_status_roll_new() {
	path_end();
	key_up_pressed = 0;
	key_right_pressed = 0;
	key_down_pressed = 0;
	key_left_pressed = 0;

	key_up = 0;
	key_right = 0;
	key_down = 0;
	key_left = 0;

	key_interact = 0;
	key_item_0 = 0;
	key_item_1 = 0;
	key_item_2 = 0;
	key_item_0_held = 0;
	key_item_1_held = 0;
	key_item_2_held = 0;
	key_item_0_released = 0;
	key_item_1_released = 0;
	key_item_2_released = 0;
	key_run_pressed = 0;
	key_run_held = 0;
	key_run_released = 0;
	key_aim = 0;
	key_aim_released = 0;
	key_inv_pressed = 0;

	ai_status_roll = -1;

	scr_ai_check_inv_equip_keys();


	if state = scr_move_state {
		scr_ai_move_code(id, ai_target)
		alarm[2] = -1;
		ai_status_roll = irandom(100);
		script_execute(ai_personality);
	}




}
