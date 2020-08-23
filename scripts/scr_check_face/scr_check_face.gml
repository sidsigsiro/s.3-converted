///scr_set_face
function scr_check_face() {



	if (haxis != 0 or vaxis != 0) {
		face = round(aim/90) ;
	}

	if face > 3 {
		face = 0
	}

	//FLIP SPRITE WHEN FACING LEFT,  TO REUSE RIGHT FACEING SPRITE
	/*
	if face = 2 {
		xscale = -1
	} else {
		xscale = 1
	}
	*/

	/*
	face
	0 = right
	1 = up
	2 = left
	3 = down
	*/






}
