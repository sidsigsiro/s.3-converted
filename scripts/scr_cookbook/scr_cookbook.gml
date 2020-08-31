// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_cookbook() {
			
var fruit_count = 0, legume_count = 0;
var inv_sprite;
var cooked_food, cooked_food_name, cooked_food_sprite,
cooked_food_proteins = 0, cooked_food_fats = 0, cooked_food_carbs = 0, cooked_food_water = 0;
			
	for(var i = 0; i <= inv_slots; i++) {
		inv_sprite = inv[i, 1];
		
		cooked_food_carbs += inv[i, 3];
		cooked_food_fats += inv[i, 4];
		cooked_food_proteins += inv[i, 5];
		cooked_food_water += inv[i, 7];
		
		if inv_sprite = spr_mango or inv_sprite = spr_avocado {
			fruit_count += 1;
		}
		
		if inv_sprite = spr_chickpeas {
			legume_count += 1;
		}
	}
	
	if fruit_count = 2 and legume_count = 1 {
		cooked_food_name = "Salad"
		cooked_food_sprite = spr_salad;
	}//potentially add a prefix like "balanced" or "harty/hearty" depending on nutrition content
	
	cooked_food = instance_create_layer(x, y - 20, "instance_layer", obj_pickup)
	
	cooked_food.inv[0, 0] = cooked_food_name;
	cooked_food.inv[0, 1] = cooked_food_sprite;
	cooked_food.inv[0, 2] = scr_eat_state;
	cooked_food.inv[0, 3] = cooked_food_carbs;
	cooked_food.inv[0, 4] = cooked_food_fats;
	cooked_food.inv[0, 5] = cooked_food_proteins;
	cooked_food.inv[0, 6] = scr_set_sprite_inventory_heal_stone;
	cooked_food.inv[0, 7] = cooked_food_water;
	cooked_food.inv[0, 8] = 0;
	cooked_food.inv[0, 9] = 0;
	cooked_food.inv[0, 10] = 0;
	
	for(var i = 0; i <= inv_slots; i++) {
		scr_item_delete(i);
	}
}