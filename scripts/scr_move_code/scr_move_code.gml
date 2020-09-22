function scr_move_code(argument0) {

	var ai_pathing = false;

	if (profile.input_profile = scr_input_profile_ai) {
		if state = scr_move_state or state = scr_run_state {
			ai_pathing = true;
		}
	}

	if ai_pathing = false  {
		var xtarg = x+lengthdir_x(spd,argument0);
		var ytarg = y+lengthdir_y(spd,argument0);

		if !place_meeting(xtarg,ytarg, obj_wall) {
			
			x = xtarg;
			y = ytarg;
			
		} else {
			var sweep_interval = 10;

			for (var angle = sweep_interval; angle <= 80; angle += sweep_interval) {
				for ( var multiplier = -1; multiplier <= 1; multiplier += 2) {      
					var angle_to_check = argument0+angle*multiplier;
					xtarg = x+lengthdir_x(spd, angle_to_check);
					ytarg = y+lengthdir_y(spd, angle_to_check);     
					if !place_meeting(xtarg,ytarg, obj_wall) {
						x = xtarg;
						y = ytarg;  
						exit;       
					}   
				}
			}
		}
	}




}
