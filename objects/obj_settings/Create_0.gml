///GAME OPTIONS
randomize();
	///SETTINGS LOAD INTO
window_set_fullscreen(1);
//set enums for keyboard
enum vk {
	comma = 188,
	period = 190,
    fw_slash = 191
}
	

pause = false
global.game_speed = 60 ///default frames per second that game runs at. use to calculate amount of time in seconds
room_speed = global.game_speed //use room_speed to temporarily change frame rate
physics_world_create(1.3/32)
physics_world_update_speed(global.game_speed)
physics_world_update_iterations(30)

global.inv_properties = 10;

