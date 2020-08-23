///camera step

dir = point_direction(x, y, obj_p1.x, obj_p1.y);

spd = (point_distance(x, y, obj_p1.x, obj_p1.y)/20);

hspd = lengthdir_x(spd, dir);

vspd = lengthdir_y(spd, dir);

x += hspd;

y += vspd;