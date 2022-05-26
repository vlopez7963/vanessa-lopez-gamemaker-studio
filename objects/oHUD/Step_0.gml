/// @description Insert description here
// You can write your code in this editor
if global.level = true
{
levelTimer -= 1/room_speed;

if (levelTimer <= 0)
{
	PlayerDeath();
}
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

//check which items are true
if global.milk = true and global.fish = false and global.chicken = false
{
	global.milkItem = true;
}

if global.fish = true and global.milk = false and global.chicken = false
{
	global.fishItem = true;
}

if global.milk = true and global.fish = true and global.chicken = false
{
	global.twoItems = true;
}

