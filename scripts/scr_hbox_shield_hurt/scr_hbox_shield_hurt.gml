///scr_hbox_hurt
function scr_hbox_shield_hurt() {

	//detect collision with other hit box

	if hbox_active = true {
		hbox_colour = c_blue;
	}

	if hbox_active = false {
		hbox_colour = c_ltgray
	}

	var _list = ds_list_create();
	var _num = instance_place_list(x, y, obj_hbox, _list, false);
	if _num > 0 {
		for (var i = 0; i < _num; ++i;) {
		
		    hbox_touched = _list[| i];
		
			var knock_back_spd, knock_back_vector, 
			shield_to_hit_vec, 
			shield_to_player_vec_plus, 
			shield_to_player_vec_min,
			damage = hbox_touched.stat_0;
		
			if hbox_active = true {
				if hbox_touched.hbox_script = scr_hbox_hit {
					if hbox_touched.is_projectile = false {
						shield_to_hit_vec = point_direction(x, y, hbox_touched.owner.x, hbox_touched.owner.y);
					} else {
						shield_to_hit_vec = point_direction(x, y, hbox_touched.x, hbox_touched.y);
					}
					if shield_to_hit_vec == 360 {
						shield_to_hit_vec = 0;
					}
					shield_to_player_vec_plus = point_direction(owner.x, owner.y, x, y) + 70
					shield_to_player_vec_min = point_direction(owner.x, owner.y, x, y) - 70
					if owner.item_thrown != noone {	//if hitbox was from thrown item
							if scr_hbox_add_blacklist(hbox_touched.id) == true {
								if shield_to_hit_vec < shield_to_player_vec_plus and shield_to_hit_vec > shield_to_player_vec_min {
									owner.character_sheet.stam -= damage;
									knock_back_spd = hbox_touched.stat_0 * 0.1;
									knock_back_vector = -(owner.face*90);
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
									knock_back_spd = hbox_touched.stat_0 * 0.1;
									knock_back_vector = owner.aim;
									with(owner) {
										kc_spd += knock_back_spd;
										kc_dir = knock_back_vector;
										hbox[0].hbox_active = true;
										hurt_damage = damage;
										hurt_knock_back_vector = knock_back_vector;
										is_hurt = true;
									}
								}
									if hbox_touched.is_projectile = true { //knock back projectile
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
					} else {
						if hbox_touched.owner != owner {
							if scr_hbox_add_blacklist(hbox_touched.id) == true {
								knock_back_spd = hbox_touched.stat_0 * 0.1;
								knock_back_vector = hbox_touched.owner.aim;
								if shield_to_hit_vec < shield_to_player_vec_plus and shield_to_hit_vec > shield_to_player_vec_min {
									with(owner) {
										character_sheet.stam -= damage
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
										hbox[0].hbox_active = true;
										hurt_damage = damage;
										hurt_knock_back_vector = knock_back_vector;
										is_hurt = true;
									}
								}
								if hbox_touched.is_projectile = true {
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
					}
				}
			}
		}
	}


	///YELLOW HURT BOX STUFF

	/*
	///scr_hbox_hurt

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
			knock_back_vector = hbox_touched.owner.dir;
			if hbox_active = true {
				if hbox_touched.hbox_script = scr_hbox_hit {
					if owner.item_thrown != noone {	//if hitbox was from thrown item
						if hbox_touched.owner.id != owner.item_thrown.id {
							if scr_hbox_add_blacklist(hbox_touched.id) == true {
								knock_back_spd = hbox_touched.stat_0 * 0.1;
								knock_back_vector = hbox_touched.owner.dir;
								with(owner) {
									is_hurt = true;
									hurt_damage = damage;
									hurt_knock_back_vector = knock_back_vector;
								}
							}
						}
					} else {
						if hbox_touched.owner != owner {
							if scr_hbox_add_blacklist(hbox_touched.id) == true {
								knock_back_spd = hbox_touched.stat_0 * 0.1;
								knock_back_vector = hbox_touched.owner.dir;
								with(owner) {
									is_hurt = true;
									hurt_damage = damage;
									hurt_knock_back_vector = knock_back_vector;
								}
							}
						}
					}
				}
			}
		}
	}


	if hbox_active = true {
		if hbox_touched {
			if hbox_touched.hbox_script = scr_hbox_hit {
				if owner.item_thrown != noone {	//if hitbox was from thrown item
					if hbox_touched.owner.id != owner.item_thrown.id {
						if scr_hbox_add_blacklist(hbox_touched.id) == true {
							knock_back_spd = hbox_touched.stat_0 * 0.1;
							knock_back_vector = hbox_touched.owner.dir;
							with(owner) {
								kc_spd += knock_back_spd;
								kc_dir = knock_back_vector;
							}
						}
					}
				} else {
					if hbox_touched.owner != owner {
						if scr_hbox_add_blacklist(hbox_touched.id) == true {
							knock_back_spd = hbox_touched.stat_0 * 0.1;
							knock_back_vector = hbox_touched.owner.dir;
							with(owner) {
								kc_spd += knock_back_spd;
								kc_dir = knock_back_vector;
							}
						}
					}
				}
			}
		}
	}




/* end scr_hbox_shield_hurt */
}
