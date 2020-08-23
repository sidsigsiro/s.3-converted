/// @description Insert description here
// You can write your code in this editor

/* THE LAYER ORDER FOR COMPOSITE PLAYER SPRITE:
item_top
eyes
head_top
arm_top
item_held
chest
leg_top
pelvis
head_bot
item_mid
leg_bot
item_bot
arm_bot
*/

//sprite[face,state] = spr
//face   0        1      2    3
//face right down left up  

owner = noone;

//	HEALTH
hp = 1;
max_hp = 100;

//	STAM
stam = 100;
max_stam = 100;
prev_stam = 5;
stam_recharge_alarm = 0;

// ARMOUR
armour = 0;

// STRENGTH
str = 5;
base_str = 5;

// MASS
mass = 5;
base_mass = 5;

//	HUNGER
hunger = 0;

//	STRESS
stress = 0;
stress_lvl = 0;

