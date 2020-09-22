///camera step

dir = point_direction(x, y, obj_char.x, obj_char.y);

spd = (point_distance(x, y, obj_char.x, obj_char.y)/20);

hspd = lengthdir_x(spd, dir);

vspd = lengthdir_y(spd, dir);

x += hspd;

y += vspd;