///scr_drop_throw
function scr_shoot_arrow() {
	//arg inv_slot

	var dam_mult = inv_equip[item_in_use, 3];


	item_thrown = instance_create_layer(x, y, "instance_layer", obj_projectile);
	item_thrown.phy_rotation = -aim;
	item_thrown.owner = id;

	for(var i = 0; i <= global.inv_properties; i++) {
		item_thrown.inv[0, i] = inv[inv_equip[item_in_use, 5], i];
	}

	with(item_thrown) {
		phy_fixed_rotation = true;
		physics_apply_force(x, y, lengthdir_x(10, owner.aim), lengthdir_y(10, owner.aim));
		dir = -phy_rotation;
		aim = dir;
		sprite_index = inv[0,1];
		dam_multiplier = dam_mult;
	}

	if profile.input_profile  != scr_input_profile_ai {
		inv[inv_equip[item_in_use, 5], 10] -= 1; //subtract from arrow count
	}

	if inv[inv_equip[item_in_use, 5], 10] <= 0 {
		scr_item_delete(inv_equip[item_in_use, 5]);
		inv_equip[item_in_use, 5] = noone;
		scr_set_sprite_arrowless();
	}


}
