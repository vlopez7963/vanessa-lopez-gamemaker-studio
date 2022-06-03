/// @description 

if global.coins >=2 and keyboard_check(vk_enter) and global.fish = true and global.milk = true
{
instance_destroy(other);
global.coins -=2;
global.chicken = true
global.allItems = true;
global.fishItem = false;
global.milkItem = false;
global.twoItems = false;
}

//if global.coins >=0 and global.twoItems = false
//{

//		lockedDoorTimer -= 1/room_speed;
//		global.lockedDoorText = true;
//		if lockedDoorTimer <=0
//		{
//			global.lockedDoor = false;
//			global.lockedDoorText = false;
//			lockedDoorTimer = 1;
//		}	
//}

