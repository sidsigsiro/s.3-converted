/// @description Insert description here
// You can write your code in this editor
if owner != noone {
	if hp = 0 {
		hp = 1
		room_goto_previous();
	}
	
	max_hp = default_max_hp + fats;

	if stam_regen_active = true {
	//refil stamina a second after it's decreased
		if stam < prev_stam and stam < max_stam + carbs {
			alarm[0] = game_speed;
		}
		if stam < (max_stam + carbs) {
			if alarm[0] == -1 {
					stam += (0.2 + water_bonus);
					water -= 0.03;
			}
		}
		if stam >= (max_stam + carbs) {
			stam = max_stam + carbs;
		}

		///calculate armour
		var hat_armour, chest_armour, pants_armour;
		hat_armour = owner.inv_clothes[0,3];
		chest_armour = owner.inv_clothes[1,3];
		pants_armour = owner.inv_clothes[2,3];

		armour = hat_armour + chest_armour + pants_armour ;
	} else {
		alarm[0] = game_speed;
	}
	
	if hp < (max_hp) {
		if proteins > 0 {
			hp += (0.02);
			proteins -= 0.02;
		}
	}
	
	if hp > max_hp {
		hp = max_hp;
	}
	
	if carbs > max_stam {
		carbs = max_stam;
	}
	
	if fats > default_max_hp {
		fats = default_max_hp;
	}
	
	if proteins > 0 {
		protein_bonus = 0;
	} else {
		protein_bonus = 1;
	}
	if proteins > 100 {
		proteins = 100;
	}
	
	if water > 0 {
		water_bonus = 0.8;
	} else {
		water_bonus = 0;
	}
	if water > 100 {
		water = 100;
	}
}
