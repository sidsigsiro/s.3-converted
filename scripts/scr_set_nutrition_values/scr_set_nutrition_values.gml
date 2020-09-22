///@desc set the sutrition values
///@param proteins
///@param fats
///@param carbs
///@param water
function scr_set_nutrition_values(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7){
	character_sheet.max_hp = argument0;
	character_sheet.hp = argument0
	max_stam = argument1;
	stam = argument1;

	
	
	character_sheet.proteins = argument2;
	character_sheet.fats = argument3;
	character_sheet.carbs = argument4;
	character_sheet.water = argument5;
}

owner = noone;

//	HEALTH
hp =75;
default_max_hp = 100
max_hp = 100;
fats = 0;

//	STAM
stam = 100;
max_stam = 100;
carbs = 0;
prev_stam = 5;
stam_recharge_alarm = 0;
stam_regen_active = true;

//proteins
proteins = 0;
protein_bonus = 0;

//water
water = 0;
water_bonus = 0;