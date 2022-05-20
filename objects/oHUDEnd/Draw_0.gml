/// @description Insert description here
// You can write your code in this editor
//display current coin count and points
draw_set_font(fBondoni)

//draw_text(camera_get_view_x(view_camera[0]) + 32, camera_get_view_y(view_camera[0]) + 64, "Keys: " +string(global.keys));




//if inventory = true

if global.twoItems = true and global.openedFridgeEnd = true
{
	draw_text(camera_get_view_x(view_camera[0]) + 128, camera_get_view_y(view_camera[0]) + 90, "GREAT JOB!");
}

if global.fishItem = true and global.openedFridgeEnd = true
{
	draw_text(camera_get_view_x(view_camera[0]) + 128, camera_get_view_y(view_camera[0]) + 90, "Good Job");
}

if global.milkItem = true and global.openedFridgeEnd = true
{
	draw_text(camera_get_view_x(view_camera[0]) + 128, camera_get_view_y(view_camera[0]) + 90, "Good Job");
}

if global.allItems = true and global.openedFridgeEnd = true
{
	draw_text(camera_get_view_x(view_camera[0]) + 128, camera_get_view_y(view_camera[0]) + 90, "PERFECT!");
}


