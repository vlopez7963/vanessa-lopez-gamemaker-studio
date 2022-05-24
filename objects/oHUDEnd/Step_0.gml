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

if global.milk = true and global.fish = false
{
	global.milkItem = true;
}

if global.fish = true and global.milk = false
{
	global.fishItem = true;
}

if global.milk = true and global.fish = true and global.chicken = false
{
	global.twoItems = true;
}

if global.milk = true and global.fish = true and global.chicken = true
{
	global.allItems = true;
}

if global.openedFridgeEnd = true
{
	openFridgeTimer -= 1/room_speed;
	if openFridgeTimer <= 0
	{
		game_restart();
	}
}

