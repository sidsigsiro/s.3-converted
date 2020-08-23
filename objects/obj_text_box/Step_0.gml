/// @description Insert description here
// You can write your code in this editor


if advance_text == true {
	if (char_count < string_length(text[page])) {
		char_count = string_length(text[page]);
	} else if (page +1 < array_length_1d(text)) {
		page += 1;
		char_count = 0;
	} else {
		//creator.my_text_bot = noone; after alarm potentially
		instance_destroy();
	}
	advance_text = false;
}

/* ADJUSTMENTS FOR OFF SCREEN
var camera_x_border = camera_get_view_x(0),
	camera_y_border = camera_get_view_y(0),
	buffer_check_left = point_distance(x, y, 0, y),
	buffer_check_right = point_distance(x, y, room_width, y),
	buffer_check_up = point_distance(x, y, x, 0),
	buffer_check_down = point_distance(x, y, x, room_height);


if buffer_check_left < box_width {
	x_buffer = buffer_check_left + 4;
}
if buffer_check_right < box_width {
	x_buffer = (buffer_check_right + 4) * -1;
}
if buffer_check_up < box_height {
	y_buffer = buffer_check_up + 4;
}
if buffer_check_down < box_height {
	y_buffer = (buffer_check_down + 4) * -1;
}
/*