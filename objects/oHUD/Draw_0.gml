/// @description Insert description here
// You can write your code in this editor
//display current coin count and points
draw_set_font(fDubai)
draw_text(camera_get_view_x(view_camera[0]) + 32, camera_get_view_y(view_camera[0]) + 32, "Coins: " +string(global.coins));
//draw_text(camera_get_view_x(view_camera[0]) + 32, camera_get_view_y(view_camera[0]) + 64,"Points: " +string(global.points)); 
draw_text(camera_get_view_x(view_camera[0]) + 32, camera_get_view_y(view_camera[0]) + 64, "HP: " +string(global.hp));
draw_text(camera_get_view_x(view_camera[0]) + 32, camera_get_view_y(view_camera[0]) + 96,"Time Remaining: " + string(floor(levelTimer)));
//draw_text(camera_get_view_x(view_camera[0]) + 32, camera_get_view_y(view_camera[0]) + 64, "Keys: " +string(global.keys));
//draw_text(camera_get_view_x(view_camera[0]) + 92, camera_get_view_y(view_camera[0]) + 90, "Boost " +string(global.boost));
//draw_text(camera_get_view_x(view_camera[0]) + 32, camera_get_view_y(view_camera[0]) + 150, "objects destroyed:" + string(objectsDestroyed));



//if inventory = true

//boost sprite and text
if global.boost = true
{
	draw_sprite(sBoost, 0, camera_get_view_x(view_camera[0]) + 300,camera_get_view_y(view_camera[0])+ 35)
}
	if boostText = true
	{
		draw_text(camera_get_view_x(view_camera[0]) + 400, camera_get_view_y(view_camera[0]) + 200, "hold SHIFT to use BOOST");
	}

//locked door text for oDoorKey
if global.lockedDoorText = true
	{
		draw_text(camera_get_view_x(view_camera[0]) + 128, camera_get_view_y(view_camera[0]) + 90, "LOCKED");
	}
		
