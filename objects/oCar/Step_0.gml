/// @description 

//inputs
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
jump = keyboard_check_pressed(vk_space);

yVector = yVector + grv;
xDirection = right - left;
xVector = xDirection * xSpeed;

//movement
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

y = y+ yVector;

//jump
if (place_meeting(x, y + 1, oWall) and (jump))
	{
		yVector = jumpForce;	
	}	
	
//animation
if(xDirection != 0)
{	
	image_xscale = xDirection;
}

//dash - finish it later
if keyboard_check(vk_shift)
{
	boost = true;
	xSpeed = 6;
	jumpForce = -12;
}
else 
{
	boost = false;
	xSpeed = 7;
	jumpForce = -10;
}

//death
if (y >= room_height)
{
	PlayerDeath();
} 
