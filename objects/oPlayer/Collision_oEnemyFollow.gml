/// @description enemy follow collision
// You can write your code in this editor

//check to see if there is a collision between oPlayer & the top of oEnemy
if (y <= other.y - other.sprite_height*0.9)

	{
		//bounce in the air a bit
		yVector = 0.5*jumpForce;
		EnemyHurt();
	}
//otherwise restart level
else 
	{
		PlayerHurt();
	}

