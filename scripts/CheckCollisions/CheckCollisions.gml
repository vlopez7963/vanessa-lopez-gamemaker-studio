// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckCollisionsX()
{
	CheckInputs();
	//what direction player is moving 
	xDirection = right - left;

	//speed &direction player is moving at
	xVector = xDirection * xSpeed;
	
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


}
function CheckCollisionsY()
{
	CheckInputs()
	yVector = yVector + grv;
	
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
}