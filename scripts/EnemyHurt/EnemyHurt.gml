// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyHurt()
{
	if(!other.isInvincible)
	{
		other.isInvincible =true;
		other.hp --;
		if (other.hp < 1)
		{
			EnemyDeath();
		}
	}

}

//restart level for player death
//replace room_restart with PlayerDeath
function EnemyDeath()
{
		if (random_range(0,10) > 4)
		{
			instance_create_layer(other.x, other.y, "Instances", oCoin)
		}
		instance_destroy(other);
}
