/// @description Insert description here
// You can write your code in this editor

if inv[0,2] = scr_eat_state or inv[0, 2] = scr_heal_state or inv[0, 2] = scr_bow_state {
	hbox[0].stat_0 = 5;
} else {
	hbox[0].stat_0 = inv[0, 3] * dam_multiplier;
}

var xscale = sprite_get_width(sprite_index)/sprite_get_width(hbox[0].sprite_index), 
	yscale = sprite_get_height(sprite_index)/sprite_get_height(hbox[0].sprite_index);

hbox[0].image_xscale = (xscale);

hbox[0].image_yscale = (yscale);

hbox[0].image_angle = -phy_rotation;

hbox[0].x = phy_position_x //+ phy_speed_x;

hbox[0].y = phy_position_y //+ phy_speed_y;

if phy_speed < 2 {
	hbox[0].stat_0 = 2 * dam_multiplier;
}

if phy_speed < 0.3 and phy_speed > 0 {
	var pickup;
	phy_speed_x = 0;
	phy_speed_y = 0;
	phy_angular_velocity = 0;
	phy_active = false
	
	pickup = instance_create_layer(x, y, "instance_layer", obj_pickup);
	
	for(var i = 0; i <= global.inv_properties; i++) {
		pickup.inv[0, i] = inv[0,i];
	}
	instance_destroy();
}