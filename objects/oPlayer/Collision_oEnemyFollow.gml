/// @description enemy follow collision


//check to see if there is a collision between oPlayer & the top of oEnemy
if (y <= other.y - other.sprite_height*0.9)

	{
		//bounce in the air a bit
		yVector = jumpForce;
		EnemyHurt();
	}
//otherwise restart level
else 
	{
		PlayerHurt();
	}

