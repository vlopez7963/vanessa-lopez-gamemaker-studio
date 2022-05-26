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
if global.boost = true and keyboard_check(vk_shift)
{
	global.usingBoost = true
	xSpeed = 9;
	jumpForce = -5;
}
else 
{
	global.usingBoost = false
	xSpeed = 7;
	jumpForce = -4;
}

//death
if (y >= room_height)
{
	PlayerDeath();
} 



if keyboard_check_pressed(vk_backspace)
{
	instance_create_layer(oCar.x, oCar.y - 5, "Instances", oPlayer);
	instance_create_layer(oCar.x, oCar.y, "Instances", oCarSprite);
	instance_destroy(self);
}
