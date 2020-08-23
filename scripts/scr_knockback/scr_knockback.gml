///scr_knockback
function scr_knockback() {

	if kc_spd > 0 {
		kc_spd /= 1.1;
	}

	
		var xtarg = x+lengthdir_x(kc_spd,kc_dir);
		var ytarg = y+lengthdir_y(kc_spd,kc_dir);

	if place_free(xtarg,ytarg) {
	    x = xtarg;
	    y = ytarg;
		} else {
		var sweep_interval = 10;

		for (var angle = sweep_interval; angle <= 80; angle += sweep_interval) {
		    for ( var multiplier = -1; multiplier <= 1; multiplier += 2) {      
		        var angle_to_check = kc_dir+angle*multiplier;
		        xtarg = x+lengthdir_x(kc_spd, angle_to_check);
		        ytarg = y+lengthdir_y(kc_spd, angle_to_check);     
		        if place_free(xtarg,ytarg) {
		            x = xtarg;
		            y = ytarg;  
		            exit;       
		        }   
		    }
		}
	}



	if kc_spd < 0.1 {
		kc_spd = 0;
	}


}
