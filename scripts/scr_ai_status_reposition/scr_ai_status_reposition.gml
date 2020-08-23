///scr_ai_status_patrol
function scr_ai_status_reposition() {

	var rand;

	if alarm[2] = -1 {
		rand = irandom_range(-90, 90)
		alarm[2] = global.game_speed;
		var curtarx = x +  lengthdir_x(64, (point_direction(ai_target.x , ai_target.y, x, y) + rand));
		var curtary = y + lengthdir_y(64, (point_direction(ai_target.x, ai_target.y, x, y) + rand));
		temp_marker = instance_create_layer(curtarx, curtary, "instance_layer", obj_ai_temp_marker);
	}

	if instance_place(x, y, temp_marker) or alarm[2] <= 0 {
		ai_status = scr_ai_status_roll_new;
	}

	if is_hurt = false {
		scr_ai_move_code(id, temp_marker);
	}


}
