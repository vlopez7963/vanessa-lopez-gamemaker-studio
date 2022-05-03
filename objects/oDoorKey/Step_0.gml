/// @description Insert description here
// You can write your code in this editor
if global.lockedDoor = true
{
		lockedDoorTimer -= 1/room_speed;
		global.lockedDoorText = true;
		if lockedDoorTimer <=0
		{
			global.lockedDoor = false;
			global.lockedDoorText = false;
			lockedDoorTimer = 1;
		}	
}
