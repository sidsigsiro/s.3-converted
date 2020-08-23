///initiate player
///initiate player
// set sprites
//create inventory
scr_inv_create(3);

scr_inv_equip_create();

scr_inv_clothes_create();

//A.I. variables
ai_target = noone;
ai_team = BLUE;
ai_status = noone;
ai_item_state = noone;
ai_personality = noone;

//target object for interact button
interact_target = noone;
search_target = noone;

state_default = scr_move_state;
  
state = state_default;
state_rot = 0;
state_rot_arm = 0;
face = 0;
state_sprite = noone;
hbox[1] = noone;

is_hurt = false;
hurt_damage = 0;
hurt_knock_back_vector = 0;
is_knocked_back = 0;
kc_spd = 0;
kc_dir = 0;

scr_set_sprite_exil();

scr_set_sprite_shirtless();

scr_set_sprite_pantless();
scr_set_sprite_hair();
scr_set_sprite_bagless();
scr_set_sprite_hatless();


//scr_set_sprite_shorts();

character_sheet = obj_character_sheet_1;
character_sheet.owner = id;

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

draw_item_aim = false;
hbox_using = noone;

//stamina calculation
stam_cost_token = 0;

scr_create_hbox(x, y, 4, 14, scr_hbox_hurt, 0);


item_thrown= noone;

draw_gui_inv = false;

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