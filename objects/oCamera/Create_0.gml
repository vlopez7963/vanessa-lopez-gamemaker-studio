/// @description Insert description here
// You can write your code in this editor

//set resolution, 
view_width = 1920/6
view_height = 1080/6

// bigger on the monitor *3
window_scale = 6;

window_set_size(view_width*window_scale,view_height*window_scale);

//center the view on the monitor
alarm[0]=1;

surface_resize(application_surface, view_width*window_scale, view_height*window_scale);