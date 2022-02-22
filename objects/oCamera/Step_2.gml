/// @description Insert description here

// view
#macro view view_camera[0]
camera_set_view_size(view, view_width, view_height);

 //set size and position of our view
//
if(instance_exists(oPlayer))
{
	var _x = oPlayer.x - view_height/2;
	var _y = oPlayer.y - view_width/2;
	camera_set_view_pos(view, _x, _y);
}