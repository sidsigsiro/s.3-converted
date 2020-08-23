///scr_ai_status_patrol
///@desc look for a pkckup with a specific inv[0,2]
///@arg pickup.inv[0,2]
function scr_ai_status_check_nearest_pickup(argument0) {
	var pickup;
	var _list = ds_list_create();
	var _num = collision_circle_list(x, y, 2000, obj_pickup, false, true, _list, true);
	if _num > 0 {
	    for (var i = 0; i < _num; ++i;) {
			pickup = _list[| i]
	        if pickup.inv[0,2] = argument0 {
				ai_target_interact = pickup;
				return true; //if checked for item is found
	        }
	    }
	}
	ds_list_destroy(_list);
	return false; ///if checked item is not found

	//look for nearest obj_pickup of a certain type
	//set ai target to it
	//pick it up when close
	//reroll if the pickup that is targeted doesn't exist anymore


}
