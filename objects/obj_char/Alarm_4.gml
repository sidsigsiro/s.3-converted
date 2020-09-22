/// @description Insert description here
// You can write your code in this editor
//update path


if auto_path = true {
	
	if alarm = -1 {
		alarm[4] = game_speed;
	}
	
	var path_tarx = (ai_target.x)
	var path_tary = (ai_target.y)

	if (mp_grid_path(my_grid, my_path, x, y, path_tarx, path_tary, 1)) {
		path_start(my_path, spd, path_action_stop, false);
	}
}