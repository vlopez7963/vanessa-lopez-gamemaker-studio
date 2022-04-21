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

	xSpeed = 6;
	jumpForce = -8;
}
else 
{

	xSpeed = 4;
	jumpForce = -6;
}

//set sprite

