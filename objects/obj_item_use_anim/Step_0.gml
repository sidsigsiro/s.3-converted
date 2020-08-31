/// @description Insert description here
// You can write your code in this editor

if y <= y_max {
	rise = false;
	fall = true;
}

if rise = true {
	if y > y_max {
		y -= 3;
		x -= 0.15
	}
} else if fall = true {
	if y < y_min {
		y += 3;
		x -= 0.15
	}
	if y >= y_min {
		instance_destroy();
	}
}
