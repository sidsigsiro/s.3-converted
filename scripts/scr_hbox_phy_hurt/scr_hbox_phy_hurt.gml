///scr_hbox_hurt
function scr_hbox_phy_hurt() {

	//detect collision with other hit box

	if hbox_active = true {
		hbox_colour = c_yellow;
	}

	if hbox_active = false {
		hbox_colour = c_ltgray
	}

	hbox_touched = instance_place(x, y, obj_hbox)

	if hbox_active = true {
		if hbox_touched {
			if hbox_touched.hbox_script = scr_hbox_hit {
				if hbox_touched.owner.id != owner.item_thrown.id {
					with(owner) {
						x = 100
						y = 100
					}
				}
			}
		}
	}


}
