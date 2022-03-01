// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StatePlayerJumping()
{
	//what does the state do?
	//If we are tochuing the ground and we press jump, fly like an eagle
	if (place_meeting(x, y +1, oWall) and (jump))
	{
		yVector = jumpForce;	
	}	

	if (place_meeting(x, y +1, oTurret) and (jump))
	{
		yVector = jumpForce;	
	}	
	//animations for the state 
	
	//conditions for leaving the states
	if(place_meeting(x, y +1, oWall))
	{
		state = states.walking;
	}
		if(place_meeting(x, y +1, oTurret))
	{
		state = states.walking;
	}
}