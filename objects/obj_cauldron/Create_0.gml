/// @description Insert description here
// You can write your code in this editor
event_inherited();

game_speed = global.game_speed

scr_inv_create(3);

scr_inv_equip_create_full();

scr_inv_clothes_create_full();

draw_gui_inv = false;

image_speed = (1/global.game_speed)*5;

