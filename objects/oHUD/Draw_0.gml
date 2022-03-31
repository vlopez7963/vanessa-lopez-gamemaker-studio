/// @description Insert description here
// You can write your code in this editor
//display current coin count and points
draw_text(camera_get_view_x(view_camera[0]) + 32, camera_get_view_y(view_camera[0]) + 32, "Coins: " +string(global.coins));
draw_text(camera_get_view_x(view_camera[0]) + 32, camera_get_view_y(view_camera[0]) + 64,"Points: " +string(global.points)); 
draw_text(camera_get_view_x(view_camera[0]) + 32, camera_get_view_y(view_camera[0]) + 96, "HP: " +string(global.hp));
draw_text(camera_get_view_x(view_camera[0]) + 32, camera_get_view_y(view_camera[0]) + 128,"Time Remaining: " + string(floor(levelTimer)));
draw_text(camera_get_view_x(view_camera[0]) + 32, camera_get_view_y(view_camera[0]) + 160, "Boost: " +string(oPlayer.boost));
draw_text(camera_get_view_x(view_camera[0]) + 32, camera_get_view_y(view_camera[0]) + 192, "Keys: " +string(global.keys));