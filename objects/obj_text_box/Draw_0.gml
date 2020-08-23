/// @description Insert description here
// You can write your code in this editor

//draw_text
draw_set_font(Font1);

draw_set_halign(fa_center);

if (char_count < string_length(text[page])) {
	char_count  += .5;
}


text_part = string_copy(text[page], 1, char_count);

draw_set_colour(c_black)
draw_text_ext((x + x_buffer) + 1, (y + y_buffer) + 1, text_part, string_hght, box_width);


draw_set_colour(my_colour);
draw_text_ext(x + x_buffer, y + y_buffer, text_part, string_hght, box_width);