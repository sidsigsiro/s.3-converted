///scr_hbox_hurt
function scr_hbox_hurt() {

	//detect collision with other hit box

	if hbox_active = true {
		hbox_colour = c_yellow;
	}

	if hbox_active = false {
		hbox_colour = c_ltgray
	}

	var _list = ds_list_create();
	var _num = instance_place_list(x, y, obj_hbox, _list, false);
	if _num > 0 {
		for (var i = 0; i < _num; ++i;) {
		    hbox_touched = _list[| i];
			var damage, knock_back_vector;					
			damage = hbox_touched.stat_0;
			if hbox_active = true {
				if hbox_touched.hbox_script = scr_hbox_hit {
					if hbox_touched.is_projectile == true {	//if hitbox was from thrown item
						if hbox_touched.owner.owner.id != owner.id {
							if scr_hbox_add_blacklist(hbox_touched.id) == true {
								knock_back_spd = hbox_touched.stat_0 * 0.1;
								knock_back_vector = hbox_touched.owner.aim;
								var new_ai_target = hbox_touched.owner.owner.hbox[0];
								with(owner) {
									hurt_damage = damage;
									kc_spd += damage*0.1;
									kc_dir = knock_back_vector;
									ai_target = new_ai_target
									ai_team += 1;
									if my_text_box != noone {
										instance_destroy(my_text_box)
										my_text_box = noone;
									}
									is_hurt = true;
								}
								if hbox_touched.is_projectile == true { //knock back projectile
									with (hbox_touched.owner) {
										knock_back_spd = -1
										knock_back_vector = aim;
										phy_fixed_rotation = false;
										phy_speed_x = 0;
										phy_speed_y = 0;
										physics_apply_force(x, y, lengthdir_x(knock_back_spd, knock_back_vector), lengthdir_y(knock_back_spd, knock_back_vector));
										phy_linear_damping = 1.7;
										phy_angular_damping = 1.7;
									}
								}
							}
						}
					} else {
						if hbox_touched.owner != owner {
							if scr_hbox_add_blacklist(hbox_touched.id) == true {
								knock_back_vector = hbox_touched.owner.aim;
								var new_ai_target = hbox_touched.owner.hbox[0];
								with(owner) {
									hurt_damage = damage;
									kc_spd += damage*0.1;
									kc_dir = knock_back_vector;
									ai_target = new_ai_target
									ai_team += 1;
									if my_text_box != noone {
										instance_destroy(my_text_box)
										my_text_box = noone;
									}
									is_hurt = true;
								}
								if hbox_touched.is_projectile = true { //knock back projectile
									with (hbox_touched.owner) {
										knock_back_spd = damage*0.1
										knock_back_vector = aim;
										phy_fixed_rotation = false;
										phy_speed_x = 0;
										phy_speed_y = 0;
										physics_apply_force(x, y, lengthdir_x(knock_back_spd, knock_back_vector), lengthdir_y(knock_back_spd, knock_back_vector));
										phy_linear_damping = 1.7;
										phy_angular_damping = 1.7;
									}
								}
							}
						}
					}
				}
			}
		}
	}



	/*
	hbox_touched = instance_place(x, y, obj_hbox);



	if hbox_active = true {
		if hbox_touched {
			if hbox_touched.hbox_script = scr_hbox_hit {
				if owner.item_thrown != noone {	//if hitbox was from thrown item
					if hbox_touched.owner.id != owner.item_thrown.id {

						with(owner) {
							is_hurt = true;
							hurt_damage = damage;
							hurt_knock_back_vector = knock_back_vector;
						}
					}
				} else {
					if hbox_touched.owner != owner {
						damage = hbox_touched.stat_0;
						knock_back_vector = hbox_touched.owner.aim;
						with(owner) {	//if hitbox was NOT from thrown item
							is_hurt = true;
							hurt_damage = damage;
							hurt_knock_back_vector = knock_back_vector;
						}
					}
				}
			}
		}
	}

/* end scr_hbox_hurt */
}
