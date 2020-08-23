///initiate player
///initiate player
// set sprites
//create inventory
scr_inv_create(3);

scr_inv_equip_create();

scr_inv_clothes_create();

add_red = 0; //set shader intensity
add_blue = 0;
add_green = 0;
add_alpha = 0; 

uni_add_red = shader_get_uniform(shd_shade_rgba_blend, "add_red"); //get add from uniform in the shader script
uni_add_blue = shader_get_uniform(shd_shade_rgba_blend, "add_blue");
uni_add_green = shader_get_uniform(shd_shade_rgba_blend, "add_green");
uni_add_alpha = shader_get_uniform(shd_shade_rgba_blend, "add_alpha");

//A.I. variables
ai_target = noone;
ai_target_interact = noone;
ai_team = BLUE;
ai_status = scr_ai_status_idle;
ai_item_state = noone;
ai_personality = scr_ai_set_temperment_meanie;
ai_melee_range = 5
//ai keys
ai_melee_key = noone;
ai_melee_key_held = noone;
ai_melee_key_released = noone;

ai_ranged_key = noone;
ai_ranged_key_held = noone;
ai_ranged_key_released = noone;

ai_heal_key = noone;
ai_heal_key_held = noone;
ai_heal_key_released = noone;

ai_block_key = noone;
ai_block_key_held = noone;
ai_block_key_released = noone;

ai_item_throw_key = noone;
ai_item_throw_key_held = noone;
ai_item_throw_key_released = noone;

vision_cone = noone;

my_path = path_add();
pm = 0; //patrol marker
temp_marker = noone;

//target object for interact button
interact_target = noone;
search_target = noone;

state_default = scr_move_state;
  
state = state_default;
state_rot = 0;
state_rot_arm = 0;
face = 0;
state_sprite = noone;
state_sprite_item_aim = noone;
hbox[1] = noone; // melee
hbox[2] = noone; //shield

is_hurt = false;
hurt_damage = 0;
hurt_knock_back_vector = 0;
is_knocked_back = 0;
kc_spd = 0;
kc_dir = 0;

scr_set_sprite_exil();

scr_set_sprite_shirtless();

scr_set_sprite_pantless();
scr_set_sprite_hairless();
scr_set_sprite_bagless();
scr_set_sprite_hatless();

//scr_inv_item_add_spear();

scr_inv_item_add_bow();

scr_inv_item_add_arrow();


scr_set_sprite_shorts();

character_sheet = obj_character_sheet_2;
character_sheet.owner = id;
profile = obj_profile_p2

face_mod_aim_x = 0;
face_mod_aim_y = 0;
face_mod_aim_rot = 0;
dir = 0; //updates every step, always reads player input
aim = 0; //updates once, copies dir
spd = 1; //updates in certain states, to lock player in to direction

item_state = noone;
item_in_use = noone;
sprite_item_aim = noone;
sprite_item_equipped_rot = noone;
state_charge = 0;
state_charge_max = 0;

food_sprite = noone;

draw_item_aim = false;
hbox_using = noone;

//stamina calculation
stam_cost_token = 0;

scr_create_hbox(x, y, 4, 14, scr_hbox_hurt, 0);


item_thrown= noone;

draw_gui_inv = false;

scr_ai_check_inv_equip_keys();

//create equip slots

//player needs set of hitboxes (u did it! :D)

// hurtbox
// weapon hitbox
// disarm hurtbox
// tipper hitbox
// stun/weaponstun hitbox?
// armour break hitbox
// armour hurtbox?
// backstab hit/hurtbox?