///scr_interact
function scr_interact() {
	if key_interact_released {
		var item_to_pickup = collision_circle(x, y, 12, obj_pickup, false, true)
		if alarm[2] > global.game_speed * 0.6 {
			if item_to_pickup {
				var is_clothes = true	//assume the item your picking up is clothes unless proven otherwise
				for(var i = 0; i <= item_to_pickup.inv_clothes_slots; i++) {
					if item_to_pickup.inv_clothes[i, 0] != noone {
						scr_inv_clothes_add(item_to_pickup.inv_clothes[i, 0],
														item_to_pickup.inv_clothes[i, 1],
														item_to_pickup.inv_clothes[i, 2],
														item_to_pickup.inv_clothes[i, 3],
														item_to_pickup.inv_clothes[i, 4],
														item_to_pickup.inv_clothes[i, 5],
														item_to_pickup.inv_clothes[i, 6],
														item_to_pickup.inv_clothes[i, 7],
														item_to_pickup.inv_clothes[i, 8],
														item_to_pickup.inv_clothes[i, 9],
														item_to_pickup.inv_clothes[i, 10],
														item_to_pickup)
						alarm[2] = -1;
						break;
					} else {
						if i == item_to_pickup.inv_clothes_slots {
							is_clothes = false;
						}
					}
				}
				if is_clothes = false {
					scr_inv_item_add(item_to_pickup.inv[0, 0], 
												item_to_pickup.inv[0, 1],
												item_to_pickup.inv[0, 2],
												item_to_pickup.inv[0, 3],
												item_to_pickup.inv[0, 4],
												item_to_pickup.inv[0, 5],
												item_to_pickup.inv[0, 6],
												item_to_pickup.inv[0, 7],
												item_to_pickup.inv[0, 8],
												item_to_pickup.inv[0, 9],
												item_to_pickup.inv[0, 10],
												item_to_pickup)
				}
				alarm[2] = -1;
			} else if collision_circle(x, y, 25, obj_Container, false,true) {
				interact_target = collision_circle(x, y, 25, obj_chest, false,true);
				if carried_object == noone {
					carried_object = interact_target;
					carried_object.carrier = id;
					state = scr_carry_state;
				}
			}
			alarm[2] = -1;
		}
	}

	if key_interact_held {
		if alarm[2] = -1 {
			alarm[2] = global.game_speed;
		}
		if alarm[2] = 0 {
			if collision_circle(x, y, 25, obj_Container, false,true) {
				interact_target = collision_circle(x, y, 25, obj_chest, false,true);
				with(interact_target) {
					scr_inv_item_drop_all();
				}
			}
		}
	}

	if key_interact_released {
		alarm[2] = -1
	}


}
