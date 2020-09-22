/// @description Insert description here
// You can write your code in this editor
//create the grid
var cell_width = 8;
var cell_height = 8;

var hcells = room_width div cell_width;
var vcells = room_height div cell_height;

global.grid = mp_grid_create(0 , 0, hcells, vcells, cell_width, cell_height);

//add the walls
mp_grid_add_instances(global.grid, obj_wall, false);
mp_grid_draw(global.grid)