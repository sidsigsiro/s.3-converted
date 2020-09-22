/// @description Insert description here
// You can write your code in this editor

///check if stamina has changed within the last frame
prev_stam = stam;

if carbs > 0 {
	carbs -= (.002);
}
if fats > 0 {
	fats -= (.002);
}

if water <= 0 {
	water = 0;
}

if proteins <= 0 {
	proteins = 0;
}

if fats <= 0 {
	fats = 0;
}

if hp <= 0 {
	hp = 0;
}