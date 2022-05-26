/// @description Insert description here
// You can write your code in this editor


if keyboard_check(vk_lcontrol)
{
	inventory = true;
	
}
else
{
	inventory = false;
}


//restart game timer
if global.openedFridgeEnd = true
{
	openFridgeTimer -= 1/room_speed;
	if openFridgeTimer <= 0
	{
		game_restart();
	}
}

