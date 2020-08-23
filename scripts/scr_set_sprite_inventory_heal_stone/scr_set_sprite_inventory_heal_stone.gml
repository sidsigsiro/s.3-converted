///scr_set_sprite_inventory_bow
function scr_set_sprite_inventory_heal_stone() {

	//set sprites to none

	sprite_item_held[0,7] = spr_blank_32x32_25f;
	sprite_item_held[3,7] = spr_blank_32x32_25f;
	sprite_item_held[2,7] = spr_blank_32x32_25f
	sprite_item_held[1,7] = spr_blank_32x32_25f;


	//set sprites

	sprite_item_held[0,7] = spr_exil_heal_stone;
	sprite_item_held[3,7] = spr_exil_heal_stone;
	sprite_item_held[2,7] = spr_exil_heal_stone
	sprite_item_held[1,7] = spr_exil_heal_stone;


}
