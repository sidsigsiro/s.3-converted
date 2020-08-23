///@func scr_inv_add
function scr_inv_item_add(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10, argument11) {

	///@arg inv[0, 0]
	///@arg inv[0, 1]
	///@arg inv[0, 2]
	///@arg inv[0, 3]
	///@arg inv[0, 4]
	///@arg inv[0, 5]
	///@arg inv[0, 6]
	///@arg inv[0, 7]
	///@arg inv[0, 8]
	///@arg inv[0, 9]
	///@arg inv[0, 10]
	///@arg not_equipable

	if argument2 != ARROW {
		///check inventory slots and adds one to empty slot
		if inv_equip[0,0] = noone {
			inv_equip[0, 0] = argument0;
			inv_equip[0, 1] = argument1;
			inv_equip[0, 2] = argument2;
			inv_equip[0, 3] = argument3;
			inv_equip[0, 4] = argument4;
			inv_equip[0, 5] = argument5;
			inv_equip[0, 6] = argument6;
			inv_equip[0, 7] = argument7;
			inv_equip[0, 8] = argument8;
			inv_equip[0, 9] = argument9;
			inv_equip[0, 10] = argument10;
			if argument11 != noone { // destroy pickup if item is picked up
				with argument11 {
					instance_destroy();
				}
			}
		} else if inv_equip[1,0] = noone {
			inv_equip[1, 0] = argument0;
			inv_equip[1, 1] = argument1;
			inv_equip[1, 2] = argument2;
			inv_equip[1, 3] = argument3;
			inv_equip[1, 4] = argument4;
			inv_equip[1, 5] = argument5;
			inv_equip[1, 6] = argument6;
			inv_equip[1, 7] = argument7;
			inv_equip[1, 8] = argument8;
			inv_equip[1, 9] = argument9;
			inv_equip[1, 10] = argument10;
			if argument11 != noone {
				with argument11 {
					instance_destroy();
				}
			}
		} else if inv_equip[2,0] = noone {
			inv_equip[2, 0] = argument0;
			inv_equip[2, 1] = argument1;
			inv_equip[2, 2] = argument2;
			inv_equip[2, 3] = argument3;
			inv_equip[2, 4] = argument4;
			inv_equip[2, 5] = argument5;
			inv_equip[2, 6] = argument6;
			inv_equip[2, 7] = argument7;
			inv_equip[2, 8] = argument8;
			inv_equip[2, 9] = argument9;
			inv_equip[2, 10] = argument10;
			if argument11 != noone {
				with argument11 {
					instance_destroy();
				}
			}
		} else for(var i = 0; i <= inv_slots; i += 1) {
			if inv[i, 0] = noone {
				inv[i, 0] = argument0;
				inv[i, 1] = argument1;
				inv[i, 2] = argument2;
				inv[i, 3] = argument3;
				inv[i, 4] = argument4;
				inv[i, 5] = argument5;
				inv[i, 6] = argument6;
				inv[i, 7] = argument7;
				inv[i, 8] = argument8;
				inv[i, 9] = argument9;
				inv[i, 10] = argument10;
				if argument11 != noone {
					with argument11 {
						instance_destroy();
					}
				} break;
			} else {
				if i = inv_slots {
				//create text "Too Full!"
				}
			}
		}
	} else {
		for(var i = 0; i <= inv_slots; i += 1) {
			if inv[i, 0] == argument0 {
				inv[i, 10] += argument10;
				if argument11 != noone {
					with(argument11) {
						instance_destroy();
					}
				} break;
			} else {
				if i == inv_slots {
					for (var j = 0; j <= inv_slots; j++) {
						if inv[j, 0] == noone {
							inv[j, 0] = argument0;
							inv[j, 1] = argument1;
							inv[j, 2] = argument2;
							inv[j, 3] = argument3;
							inv[j, 4] = argument4;
							inv[j, 5] = argument5;
							inv[j, 6] = argument6;
							inv[j, 7] = argument7;
							inv[j, 8] = argument8;
							inv[j, 9] = argument9;
							inv[j, 10] = argument10;
							if argument11 != noone {
								with argument11 {
									instance_destroy();
								}
							} break;
						} else {
							if j = inv_slots {
								//inv full
							}
						}
					}
				}
			}
		}
	}


	/*
	}
				arrow_slot = i;
			}
		}
		if arrow_slot != noone {
			inv[arrow_slot, 10] += argument10;
			if argument11 != noone {
				with(argument11) {
					instance_destroy();
				}
			}
		} else {
			for(var i = 0; i <= inv_slots; i++) {
				if inv[i, 0] == noone {
					inv[i, 0] = argument0;
					inv[i, 1] = argument1;
					inv[i, 2] = argument2;
					inv[i, 3] = argument3;
					inv[i, 4] = argument4;
					inv[i, 5] = argument5;
					inv[i, 6] = argument6;
					inv[i, 7] = argument7;
					inv[i, 8] = argument8;
					inv[i, 9] = argument9;
					inv[i, 10] = argument10;
					if argument11 != noone {
						with argument11 {
							instance_destroy();
						}
					} 
				} else {
					if i == inv_slots {
						//inv full
					} 
				}
			}
		}
	}

	/*
	//old code
			if arrow_in_inv = true {
				inv[i, 10] += argument10;
				if argument11 != noone {
						with argument11 {
							instance_destroy();
					}
				}
			}
			if inv[i, 0] = noone {
				inv[i, 0] = argument0;
				inv[i, 1] = argument1;
				inv[i, 2] = argument2;
				inv[i, 3] = argument3;
				inv[i, 4] = argument4;
				inv[i, 5] = argument5;
				inv[i, 6] = argument6;
				inv[i, 7] = argument7;
				inv[i, 8] = argument8;
				inv[i, 9] = argument9;
				inv[i, 10] = argument10;
				if argument11 != noone {
					with argument11 {
						instance_destroy();
					}
				} break;
			} else if inv[i, 0] = argument0 {
					inv[i, 10] += argument4
					if argument11 != noone {
						with argument11 {
							instance_destroy();
						}
					} break;
				} else {
					if i = inv_slots {
					//create text "Too Full!"
					}
				}
			}
		}

/* end scr_inv_item_add */
}
