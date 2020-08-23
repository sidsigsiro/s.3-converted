///scr_hbox_hit
function scr_hbox_shield_parry() {

	//do damage to target

	hbox_colour = c_aqua;

	var _list = ds_list_create();
	var _num = instance_place_list(x, y, obj_hbox, _list, false);
	if _num > 0 {
		for (var i = 0; i < _num; ++i;) {
		    hbox_touched = _list[| i];
			if hbox_active = true {
				if hbox_touched {
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
						var knock_back_spd, knock_back_vector, damage;
						knock_back_spd = 30*0.1;
						knock_back_vector = owner.aim;
						damage = hbox_touched.stat_0;
							if scr_hbox_add_blacklist(hbox_touched.id) == true {
								if hbox_touched.is_projectile  = false {
								if shield_to_hit_vec < shield_to_player_vec_plus and shield_to_hit_vec > shield_to_player_vec_min {
									hbox_touched.owner.character_sheet.stam -= 30;
									with(hbox_touched.owner) {
										kc_spd += knock_back_spd;
										kc_dir = knock_back_vector;
										alarm[0] = -1;
										state = scr_stun_state;
										if character_sheet.stam <= 0 {
											scr_inv_item_drop_equip(item_in_use);
										}
									}
								} else {
									with(owner) {
										hbox[0].hbox_active = true;
										is_hurt = true;
										hurt_damage = damage;
										hurt_knock_back_vector = knock_back_vector;
									}
								}
								} else {
									var phy_force, phy_rot;
									if shield_to_hit_vec < shield_to_player_vec_plus and shield_to_hit_vec > shield_to_player_vec_min {
										phy_force = 10;
										phy_rot = 180
									} else {
										phy_force = 1;
										phy_rot = 0;
										with(owner) {
											hbox[0].hbox_active = true;
											is_hurt = true;
											hurt_damage = damage;
											hurt_knock_back_vector = knock_back_vector;
										}
									}	
									hbox_touched.owner.owner = owner.id;
									with(hbox_touched.owner) {
										knock_back_spd = -1;
										phy_rotation += phy_rot;
										phy_speed_x = 0;
										phy_speed_y = 0;
										dir = -phy_rotation;
										aim = dir;
										physics_apply_force(x, y, lengthdir_x(phy_force, knock_back_vector), lengthdir_y(phy_force, knock_back_vector));
										phy_linear_damping = 1.7;
										phy_angular_damping = 1.7;
									}
								}
								with (owner) {
									state = scr_shield_parry_state;
								}
							}
						}
					}
				}
			}
	}


}
