function scr_hbox_add_blacklist(argument0) {
	//@func scr_hbox_add_blacklist(hbox.id)
	//@arg hbox.id to add to blacklist
	for (var i = 0; i  < 11;  i++) {
		//if id is on blacklist, return false
		if hbox_blacklist[i] == argument0 {
			return false;
		}
		if i = 10 {
			for (var n = 0; n < 11; n++) {
				if hbox_blacklist[n] == noone {
					hbox_blacklist[n] = argument0;
					return true;
				}
				if n == 10 and hbox_blacklist[n] != argument0 {
					for (var k = 0; k < 11; k++) {
						hbox_blacklist[k] = noone;
					}
					hbox_blacklist[0] = argument0;
					return true;
				}
			}
		}
	}



}
