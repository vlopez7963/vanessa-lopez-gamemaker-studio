// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerHurt()
{
	if(!oPlayer.isInvincible)
	{
		oPlayer.isInvincible = true;
		alarm_set(0,2*room_speed);
		global.hp --;
		if (global.hp < 1)
		{
			PlayerDeath();
		}
	}

}
//restart level for player death
//replace room_restart with PlayerDeath
function PlayerDeath()
{
		room_restart();
		oHUD.levelTimer = 35
		global.hp = 6;
		
}
