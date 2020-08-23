function scr_ai_set_temperment_meanie() {
	//scr_ai_set_temperment_meanie



	if character_sheet.hp <= character_sheet.max_hp / 3 {
		if heal_slot != noone {
			if inv_equip[heal_slot, 3] > 0 {
				ai_status_roll = -1
				ai_status = scr_ai_status_heal;
			}
		}
	}

	if character_sheet.stam < character_sheet.max_stam * 0.05 {
		ai_status_roll = -1;
		ai_status = scr_ai_status_reposition;
	}

	var roll = ai_status_roll;

	if roll > 0 {
		if roll >= 0 and roll < 50 {
				ai_status_roll = -1
				ai_status = scr_ai_status_attack_melee;
		} else if roll >= 50 and roll < 75 {
				ai_status_roll = -1
				ai_status = scr_ai_status_attack_ranged;
		} else if roll >= 75 and roll < 90 {
			ai_status_roll = -1
			ai_status = scr_ai_status_shield;
		} else {
			ai_status_roll = -1
			if alarm[3] < 0 {
				ai_status = scr_ai_status_dodge;
			} else {
				ai_status = scr_ai_status_reposition;
			}
		}
	}



}
