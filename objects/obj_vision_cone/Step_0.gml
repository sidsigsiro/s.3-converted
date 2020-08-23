/// @description Insert description here
// You can write your code in this editor
var _list = ds_list_create();
var _num = instance_place_list(x, y, obj_hbox, _list, false);
if _num > 0 {
	for (var i = 0; i < _num; ++i;) {				
		if owner.ai_status == scr_ai_status_idle  
		or owner.ai_status == scr_ai_status_patrol 
		or owner.ai_status == scr_ai_status_investigate {
			if _list[| i].owner != owner {
				if _list[| i].hbox_script == scr_hbox_hurt {
					owner.ai_target = _list[| i];
					owner.ai_status = scr_ai_status_attack_melee;
				}
			} 
		}
	}
}
ds_list_destroy(_list)
