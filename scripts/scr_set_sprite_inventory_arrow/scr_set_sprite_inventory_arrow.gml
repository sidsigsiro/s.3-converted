///scr_set_sprite_inventory_bow
function scr_set_sprite_inventory_arrow() {

	//set sprites to none

	sprite_arrow_held[0,6] = spr_blank_32x32_25f;
	sprite_arrow_held[3,6] = spr_blank_32x32_25f;
	sprite_arrow_held[2,6] = spr_blank_32x32_25f;
	sprite_arrow_held[1,6] = spr_blank_32x32_25f;



	sprite_arrow_bot[0,6] = spr_blank_32x32_25f;
	sprite_arrow_bot[3,6] = spr_blank_32x32_25f;
	sprite_arrow_bot[2,6] = spr_blank_32x32_25f;
	sprite_arrow_bot[1,6] = spr_blank_32x32_25f;



	//set sprites

	sprite_arrow_held[0,6] = spr_bow_arrow_right;
	sprite_arrow_held[3,6] = spr_bow_arrow_down;
	sprite_arrow_held[2,6] = spr_bow_arrow_left;
	sprite_arrow_held[1,6] = spr_blank_32x32_25f;



	sprite_arrow_bot[0,6] = spr_blank_32x32_25f;
	sprite_arrow_bot[3,6] = spr_blank_32x32_25f;
	sprite_arrow_bot[2,6] = spr_blank_32x32_25f;
	sprite_arrow_bot[1,6] = spr_bow_arrow_up;




}
