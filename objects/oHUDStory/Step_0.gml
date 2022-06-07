/// @description Insert description here
// You can write your code in this editor


if keyboard_check(vk_lcontrol)
{
	inventory = true
	
}
else
{
	inventory = false
}

if keyboard_check(vk_escape)
{
	game_restart();
}

if leaving = true
{
	leavingText = true;
	leavingTimer -=1/room_speed;
	if leavingTimer <= 0
	{
		leavingText = false;	
	}
}
