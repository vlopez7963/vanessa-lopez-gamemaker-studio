/// @description Insert description here
// You can write your code in this editor

//when I collide with oCoin, destroy coin and boost points
instance_destroy(other);

global.coins += 1;
if global.coins = 5
{

	global.coins = 4;
	draw_text(camera_get_view_x(view_camera[0]) + 64, camera_get_view_y(view_camera[0]) + 32, "MAX COINS ");

}
	

global.points += 100;
