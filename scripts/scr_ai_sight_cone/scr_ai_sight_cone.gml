///scr_ai_sight_cone
function scr_ai_sight_cone() {
	var sight_dist_x, sight_dist_y,
			sight_dir,
			ang_x = 0,
			ang_y = 0;

	sight_dir = 90 * face;

	if face = 0 or face = 2 {
		ang_x = 0;
		ang_y = 45;
	} else {
		ang_x = 45;
		ang_y = 0;
	}

	sight_dist_x = x + lengthdir_x(100, sight_dir);
	sight_dist_y = y + lengthdir_y(100, sight_dir);


	draw_triangle(x, y, sight_dist_x + ang_x, sight_dist_y + ang_y, sight_dist_x - ang_x, sight_dist_y - ang_y, true);

	if vision_cone = noone {
		vision_cone = instance_create_layer(x, y, "instance_layer", obj_vision_cone);
		vision_cone.owner = id;
	}

	vision_cone.x = x;
	vision_cone.y = y;
	vision_cone.image_angle = sight_dir;

	//players cant be read because they have no native sprite thus no native collision mask.
	//use the hurtbox mask instead for all character related collisions.



}
