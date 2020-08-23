/// @description Insert description here
// You can write your code in this editor
if owner != noone {
	if hp = 0 {
		hp = 1
		room_restart();
	}


	
	//refil stamina a second after it's decreased
	if stam < prev_stam {
		alarm[0] = global.game_speed;
	}
	if stam < max_stam {
		if alarm[0] == -1 {
				stam += 1;
		}
	}
	if stam > max_stam {
		stam = max_stam;
	}

	///calculate armour
	var hat_armour, chest_armour, pants_armour;
	hat_armour = owner.inv_clothes[0,3];
	chest_armour = owner.inv_clothes[1,3];
	pants_armour = owner.inv_clothes[2,3];

	armour = hat_armour + chest_armour + pants_armour;
}
