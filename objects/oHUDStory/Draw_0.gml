/// @description Insert description here
// You can write your code in this editor
//display current coin count and points
draw_set_font(fDubai)

//draw_text(camera_get_view_x(view_camera[0]) + 32, camera_get_view_y(view_camera[0]) + 64, "Keys: " +string(global.keys));




//if inventory = true

	
if global.openedFridge = true
	{
		draw_sprite(sMilk, 0, camera_get_view_x(view_camera[0]) + 600,camera_get_view_y(view_camera[0])+ 70 )
		draw_sprite(sFish, 0, camera_get_view_x(view_camera[0]) + 500,camera_get_view_y(view_camera[0])+ 70 )
		draw_sprite(sChicken, 0, camera_get_view_x(view_camera[0]) + 400,camera_get_view_y(view_camera[0])+ 70 )
		//draw_sprite(sWatermelon, 0, camera_get_view_x(view_camera[0]) + 300,camera_get_view_y(view_camera[0])+ 100 )
	}	
