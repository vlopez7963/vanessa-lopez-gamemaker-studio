/// @description Insert description here
// You can write your code in this editor
levelTimer -= 1/room_speed;

if (levelTimer <= 0)
{
	PlayerDeath();
}


//inventory
if keyboard_check(vk_lcontrol)
{
	inventory = true
	
}
else
{
	inventory = false
}

// boost text timer
if global.boost = true
{
	boostTimer -=1/room_speed;
	boostText = true
	if boostTimer <= 0
	{
		boostText = false
	}
}
