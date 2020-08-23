///scr_shield_parry_state
function scr_shield_parry_state() {

	state_num = 10;
	scr_check_face();
	if alarm[0] == -1 {
		alarm[0] = global.game_speed / 2;
		spd = 2;
	}
	if spd > 0 {
		spd -= 0.2;
	} else {
		spd = 0;
	}
	
	image_speed = 0
	
	scr_move_code(aim);

	hbox[0].hbox_active = false;

	if hbox[2] != noone {
		with(hbox[2]) {
			instance_destroy();
		}
	}



}
