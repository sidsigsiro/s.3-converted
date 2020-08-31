///scr_set_sprite_bagless
function scr_set_sprite_bag() {

	//																		WALK
	sprite_bag[0,0] = spr_bag_walk_right
	sprite_bag[3,0] = spr_blank_32x32_25f
	sprite_bag[2,0] = spr_bag_walk_left
	sprite_bag[1,0] = spr_bag_walk_up

	//


	//																	SPEAR
	sprite_bag[0,1] = spr_bag_spear_attack_right;
	sprite_bag[3,1] = spr_bag_spear_attack_down;
	sprite_bag[2,1] = spr_bag_spear_attack_left;
	sprite_bag[1,1] = spr_bag_spear_attack_up;

	//

	//																		THROW
	sprite_bag[0,2] = spr_bag_throw_right;
	sprite_bag[3,2] = spr_bag_throw_down;
	sprite_bag[2,2] = spr_bag_throw_left;
	sprite_bag[1,2] = spr_bag_throw_up;

	//																		RUN
	sprite_bag[0,3] = spr_bag_walk_right;
	sprite_bag[3,3] = spr_blank_32x32_25f;
	sprite_bag[2,3] = spr_bag_walk_left;
	sprite_bag[1,3] = spr_bag_walk_up;

	//																		DIVE
	sprite_bag[0,4] = spr_bag_dive_right;
	sprite_bag[3,4] = spr_bag_dive_down;
	sprite_bag[2,4] = spr_bag_dive_left;
	sprite_bag[1,4] = spr_bag_dive_up;

	//																		SHIELD
	sprite_bag[0,5] = spr_blank_32x32_25f;
	sprite_bag[3,5] = spr_bag_walk_left;
	sprite_bag[2,5] = spr_bag_walk_up;
	sprite_bag[1,5] = spr_bag_walk_right;

	//																		BOW
	sprite_bag[0,6] = spr_blank_32x32_25f;
	sprite_bag[3,6] = spr_bag_walk_left;
	sprite_bag[2,6] = spr_bag_walk_up;
	sprite_bag[1,6] = spr_bag_walk_right;

	//																		HEAL
	sprite_bag[0,7] = spr_blank_32x32_25f;
	sprite_bag[3,7] = spr_blank_32x32_25f;
	sprite_bag[2,7] = spr_blank_32x32_25f;
	sprite_bag[1,7] = spr_blank_32x32_25f;

	//																		SPEAR CHARGED
	sprite_bag[0,8] = spr_blank_32x32_25f;
	sprite_bag[3,8] = spr_bag_walk_left;
	sprite_bag[2,8] = spr_bag_walk_up;
	sprite_bag[1,8] = spr_bag_walk_right;

	sprite_bag[0,9] = spr_blank_32x32_25f;
	sprite_bag[3,9] = spr_bag_walk_left;
	sprite_bag[2,9] = spr_bag_walk_up;
	sprite_bag[1,9] = spr_bag_walk_right;

	//																		SHIELD PARRY
	sprite_bag[0,10] = spr_bag_walk_right
	sprite_bag[3,10] = spr_blank_32x32_25f
	sprite_bag[2,10] = spr_bag_walk_left
	sprite_bag[1,10] = spr_bag_walk_up

	//																		EAT
	sprite_bag[0,11] = spr_blank_32x32_25f;
	sprite_bag[3,11] = spr_blank_32x32_25f;
	sprite_bag[2,11] = spr_blank_32x32_25f;
	sprite_bag[1,11] = spr_blank_32x32_25f;

//																		DRINK
	sprite_bag[0,12] = spr_blank_32x32_25f;
	sprite_bag[3,12] = spr_blank_32x32_25f;
	sprite_bag[2,12] = spr_blank_32x32_25f;
	sprite_bag[1,12] = spr_blank_32x32_25f;

}
