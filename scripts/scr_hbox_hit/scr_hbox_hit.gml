///scr_hbox_hit
function scr_hbox_hit() {

	//do damage to target

	hbox_colour = c_red;

	var _list = ds_list_create();
	var _num = instance_place_list(x, y, obj_hbox, _list, false);
	if _num > 0 {
		for (var i = 0; i < _num; ++i;) {
		    hbox_touched = _list[| i];
			if hbox_active = true {
				if hbox_touched {
					if hbox_touched.hbox_script = scr_hbox_hit {
						if hbox_touched.is_projectile  = false {
							var knock_back_spd, knock_back_vector, damage;
							damage = hbox_touched.stat_0;
							if owner.item_thrown != noone {	//if hitbox was from thrown item
								if hbox_touched.owner.owner.id != owner.id {
									if scr_hbox_add_blacklist(hbox_touched.id) == true {
										if owner.alarm[0] <= hbox_touched.owner.alarm[0] {
											knock_back_spd = hbox_touched.stat_0 * 0.1;
											knock_back_vector = hbox_touched.owner.aim;
											if is_projectile = false {
												owner.character_sheet.stam -= damage;
												with(owner) {
													kc_spd += knock_back_spd;
													kc_dir = knock_back_vector;
													if character_sheet.stam <= 0 {
														alarm[0] = -1;
														scr_inv_item_drop_equip(item_in_use);
														state = scr_stun_state;
													}
												}
											} else {
												with(owner) {
													phy_fixed_rotation = false;
													physics_apply_force(x, y, lengthdir_x(knock_back_spd, knock_back_vector), lengthdir_y(knock_back_spd, knock_back_vector));
												}
											}
										}
									}
								}
							} else {
								if hbox_touched.owner != owner {
									if scr_hbox_add_blacklist(hbox_touched.id) == true {
										if owner.alarm[0] <= hbox_touched.owner.alarm[0] {
											knock_back_spd = hbox_touched.stat_0 * 0.1;
											knock_back_vector = hbox_touched.owner.aim;
											if is_projectile = false {
												owner.character_sheet.stam -= damage;
												with(owner) {
													kc_spd += knock_back_spd;
													kc_dir = knock_back_vector;
													if character_sheet.stam <= 0 {
														alarm[0] = -1;
														scr_inv_item_drop_equip(item_in_use);
														state = scr_stun_state;
													}
												}
											} else {
												with(owner) {
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
			}
		}
	}


}
