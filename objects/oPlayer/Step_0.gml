//code that runs every frame

script_execute(state_array[state]);
sprite_index = sprite_array[state];

//position and movement of player 



//die in a pit and restart level
if (y >= room_height)
{
	PlayerDeath();
} 

//speed boost 
//add limited time next no

if global.boost = true and keyboard_check(vk_shift)
{
	global.usingBoost = true
	xSpeed = 5.5;
	jumpForce = -6.2;
}
else 
{
	global.usingBoost = false
	xSpeed = 4;
	jumpForce = -5.2;
}

//set sprite

