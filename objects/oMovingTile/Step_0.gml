/// @description Insert description here
// You can write your code in this editor


turnTimer -= 1/room_speed;
if (turnTimer < 0)
{
	turnTimer = 2.5;
	xDirection = -xDirection
}	
xVector = xSpeed * xDirection

if (place_meeting(x + xVector, y, oWall))
{
	xDirection = -xDirection;
	turnTimer = 2.4;
}

x = x + xVector;