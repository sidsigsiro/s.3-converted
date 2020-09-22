/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

var sub_img,
x_offset,
y_offset,
bar_size,
bar_alpha = 1,
char_sheet;

	// lighting camera shenanigans (copied from composite_shadow_map
	var camera = lighting_get_active_camera();
	var cameraX = camera[eLightingCamera.X];
	var cameraY = camera[eLightingCamera.Y];
	var cameraW = camera[eLightingCamera.Width];
	var cameraH = camera[eLightingCamera.Height];


//player 1 HUD
if instance_exists(obj_character_sheet_1) {
	char_sheet = obj_character_sheet_1; 
	
	for (var i = 0; i <= 3; i++) {
		if i == 0 {
			sub_img = 1
			y_offset = 0;
			bar_size = (char_sheet.default_max_hp / 100);
		} else if i == 1 {
			sub_img = 1;
			y_offset = sprite_get_height(spr_hud_bars_outline) - 1;
			bar_size = (char_sheet.max_stam / 100);
		} else if i == 2 {
		sub_img = 2;
			y_offset = (sprite_get_height(spr_hud_bars_outline) * 2) - 2;
			bar_size = 1;
		} else if i == 3 {
			y_offset = (sprite_get_height(spr_hud_bars_outline) * 2);
		}
		
		draw_sprite_ext(spr_hud_bars_outline, sub_img, (cameraX + 12), cameraY + (12 + y_offset),
		bar_size, 1, 0, c_white, bar_alpha);
		}
	
	for(var i = 0; i <= 9; i++) {
		if i < 3 or i == 8 {
			//health and armour
			y_offset = 0;
		} else if i < 6 or i == 9 {
			//stam and hunger
			y_offset = sprite_get_height(spr_hud_bars_outline) - 1;
		} else if i == 6 {
			y_offset = (sprite_get_height(spr_hud_bars_outline) * 2) - 2;
		} else {
			y_offset = (sprite_get_height(spr_hud_bars_outline) * 2);
		}
		
		sub_img = i;
		
		x_offset = 0;
		
		if i == 0 {
			if char_sheet.hp >= 0 {
				if char_sheet.hp <= char_sheet.default_max_hp {
					bar_size = char_sheet.hp / 100;			
				} else {
					bar_size = char_sheet.default_max_hp / 100;
				}
			}
		} else if i == 1 {
			if char_sheet.hp > char_sheet.default_max_hp {
				bar_size = (char_sheet.hp - char_sheet.default_max_hp) / 100;
				bar_alpha = 1;
			} else {
				bar_alpha = 0;
			}
		} else if i == 2 {
			x_offset = ((sprite_get_width(spr_hud_bars) / 100) * char_sheet.fats) - 2;
			if char_sheet.fats > 0 {
				bar_alpha = 1
			} else {
				bar_alpha = 0;
			}
			bar_size = 1;
		} else if i == 3 {
			bar_alpha = 1;
			if char_sheet.stam >= 0 {
				if char_sheet.stam > char_sheet.max_stam {
					bar_size = char_sheet.max_stam / 100;
				} else {
					bar_size = char_sheet.stam / 100;
				}			
			} else {
				sub_img = 5;
				bar_size = (char_sheet.stam / 100) * -1;
			} bar_alpha = 1;
		} else if i == 4 {
			if char_sheet.stam > char_sheet.max_stam {
				bar_alpha = 1;
				bar_size = (char_sheet.stam - char_sheet.max_stam) / 100;
			} else {
				bar_size = 0;
			}
		} else if i == 5 {
			bar_size = char_sheet.hunger / 100;
		} else if i == 6 {
			bar_size = char_sheet.proteins / 100;
		} else if i == 7 {
			bar_size = char_sheet.water / 100;
		} else if i == 8 {
			bar_size = char_sheet.armour / 100;
			bar_alpha = 0;
		} else if i == 9 {
			x_offset = ((sprite_get_width(spr_hud_bars) / 100) * char_sheet.carbs) - 2;
			if char_sheet.carbs > 0 {
				bar_alpha = 1
			} else {
				bar_alpha = 0;
			}
			bar_size = 1;
		}
		draw_sprite_ext(spr_hud_bars, sub_img, (cameraX + 13) + x_offset, cameraY + (12 + y_offset),
		bar_size, 1, 0, c_white, bar_alpha);
		
		draw_set_halign(fa_left);
		draw_set_font(Font2);
		
		draw_set_color(c_black);
		draw_text(((cameraX + 13) + (sprite_get_width(spr_hud_bars) + 5)), cameraY + 10, "% " + string(char_sheet.armour));
		
		draw_set_color(c_white);
		draw_text(((cameraX + 13) + (sprite_get_width(spr_hud_bars) + 4)), cameraY + 9, "% " + string(char_sheet.armour));
		
	}
}