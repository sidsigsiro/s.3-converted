/// @description Insert description here
// You can write your code in this editor
scr_inv_create(3);
scr_inv_clothes_create();
scr_inv_equip_create();
item_thrown = noone;

owner = noone;

scr_create_hbox(x, y, sprite_get_width(sprite_index), sprite_get_height(sprite_index), scr_hbox_hit, 0);
hbox[0].is_projectile = true;
dam_multiplier = 1;


