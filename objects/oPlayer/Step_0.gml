//code that runs every frame

levelTimer -= 1/room_speed;

if (levelTimer <= 0)
{
	room_restart();
}

//keyboard check and inputs
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
jump = keyboard_check_pressed(vk_space);

//what direction player is moving 
xDirection = right - left;

//speed &direction player is moving at
xVector = xDirection * xSpeed;
yVector = yVector + grv;

//position and movement of player 

//check to see if there is a oWall to the left or right of my oPlayer, if there is stop movement and if ther isn't continue to move as normal
if (place_meeting(x + xVector, y , oWall))
	{
		//check 1 pixel in the desired xDirection until we hit a wall
		// ! means "not"
		while(!place_meeting(x + xVector, y , oWall))
		{
			//move 1 pixel in the direction your player is moving 
			x = x + xDirection;
		}
		//otherwise you are coming into contact with oWall and should stop
		xVector = 0;
		
	}	
	
	if (place_meeting(x + xVector, y , oTurret))
	{
		//check 1 pixel in the desired xDirection until we hit a wall
		// ! means "not"
		while(!place_meeting(x + xVector, y , oTurret))
		{
			//move 1 pixel in the direction your player is moving 
			x = x + xDirection;
		}
		//otherwise you are coming into contact with oWall and should stop
		xVector = 0;
		
	}	
	
	
//otherwise move as normal
x = x + xVector;

if (place_meeting(x, y + yVector, oWall))
	{
		//check 1 pixel in the desired xDirection until we hit a wall
		// ! means "not"
		//sign means "return the positive or negative sign nof value"
		// if yVector = -10, sign(yVector) = -1, but if yVector = +10, sign(yVector) = +1 
		while (!place_meeting(x, y + sign(yVector), oWall))
		{
			//move 1 pixel in the direction your player is moving 
			y = y + sign(yVector);
		}	
		yVector = 0;
	}	
	
	if (place_meeting(x, y + yVector, oTurret))
	{
		//check 1 pixel in the desired xDirection until we hit a wall
		// ! means "not"
		//sign means "return the positive or negative sign nof value"
		// if yVector = -10, sign(yVector) = -1, but if yVector = +10, sign(yVector) = +1 
		while (!place_meeting(x, y + sign(yVector), oTurret))
		{
			//move 1 pixel in the direction your player is moving 
			y = y + sign(yVector);
		}	
		yVector = 0;
	}	
//otherwise move as normal	
y = y + yVector;

//If we are tochuing the ground and we press jump, fly like an eagle
if (place_meeting(x, y +1, oWall) and (jump))
{
	yVector = jumpForce;	
}	

if (place_meeting(x, y +1, oTurret) and (jump))
{
	yVector = jumpForce;	
}	


//die in a pit and restart level
if (y >= room_height)
{
	PlayerDeath();
} 

//speed boost 
//add limited time next
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



