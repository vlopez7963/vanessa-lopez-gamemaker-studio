//code that runs every frame

if (state == states.walking)
{
	StatePlayerWalking();	
}
else if (state == states.jumping)
{
	StatePlayerJumping();
}

levelTimer -= 1/room_speed;

if (levelTimer <= 0)
{
	room_restart();
}



//position and movement of player 



//die in a pit and restart level
if (y >= room_height)
{
	PlayerDeath();
} 

//speed boost 
//add limited time next no
if keyboard_check(vk_shift)
{
	boost = true;
	xSpeed = 6;
	jumpForce = -12;
}
else 
{
	boost = false;
	xSpeed = 4;
	jumpForce = -10;
}

//set sprite
	switch(xDirection)
{
case 0: sprite_index = sCat; break; 
case 1: sprite_index = sCatRight; break; 
case -1: sprite_index = sCatLeft; break;
}
