/// @description Insert description here
// You can write your code in this editor
levelTimer -= 1/room_speed;

if (levelTimer <= 0)
{
	PlayerDeath();
}

if keyboard_check(vk_lcontrol)
{
	inventory = true
	
}
else
{
	inventory = false
}
