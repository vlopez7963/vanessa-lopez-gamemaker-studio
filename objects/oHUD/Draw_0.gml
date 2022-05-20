/// @Draw

//font 
draw_set_font(fDubai)


draw_text(camera_get_view_x(view_camera[0]) + 32, camera_get_view_y(view_camera[0]) + 32, "Coins: " +string(global.coins));
if global.level = true
{
draw_text(camera_get_view_x(view_camera[0]) + 32, camera_get_view_y(view_camera[0]) + 64, "HP: " +string(global.hp));
draw_text(camera_get_view_x(view_camera[0]) + 32, camera_get_view_y(view_camera[0]) + 96,"Time Remaining: " + string(floor(levelTimer)));

//draw_text(camera_get_view_x(view_camera[0]) + 32, camera_get_view_y(view_camera[0]) + 64, "Keys: " +string(global.keys));
//draw_text(camera_get_view_x(view_camera[0]) + 92, camera_get_view_y(view_camera[0]) + 90, "Boost " +string(global.boost));
//draw_text(camera_get_view_x(view_camera[0]) + 32, camera_get_view_y(view_camera[0]) + 150, "objects destroyed:" + string(objectsDestroyed));
}

//if inventory = true


//boost sprite and text
if global.boost = true and global.usingBoost = false
{
	draw_sprite(sBoost, 0, camera_get_view_x(view_camera[0]) + 300,camera_get_view_y(view_camera[0])+ 35)
	//instance_destroy(oBoost);
}
//if global.boost = true and global.usingBoost = true
//{
//	instance_create_layer(camera_get_view_x(view_camera[0]) + 300,camera_get_view_y(view_camera[0])+ 35, "instances", oBoost)
//}




if boostText = true
	{
		draw_text(camera_get_view_x(view_camera[0]) + 400, camera_get_view_y(view_camera[0]) + 200, "hold SHIFT to use BOOST");
	}


//locked door text for oDoorKey
if global.lockedDoorText = true
	{
		draw_text(camera_get_view_x(view_camera[0]) + 128, camera_get_view_y(view_camera[0]) + 90, "LOCKED");
	}

//items check

if global.fish = true
	{
		draw_sprite(sCheck, 0, camera_get_view_x(view_camera[0]) + 495,camera_get_view_y(view_camera[0])+ 84 )
	}
if global.chicken = true
	{
		draw_sprite(sCheck, 0, camera_get_view_x(view_camera[0]) + 395,camera_get_view_y(view_camera[0])+ 84 )
	}
if global.milk = true
	{
		draw_sprite(sCheck, 0, camera_get_view_x(view_camera[0]) + 595,camera_get_view_y(view_camera[0])+ 84 )
	}
//if global.watermelon = true
//	{
//		draw_sprite(sCheck, 0, camera_get_view_x(view_camera[0]) + 295,camera_get_view_y(view_camera[0])+ 84 )
//	}
		
