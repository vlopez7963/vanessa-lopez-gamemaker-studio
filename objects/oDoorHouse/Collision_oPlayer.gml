/// @description Insert description here
// You can write your code in this editor
openDoor = true;



//if openDoor and keyboard_check(vk_enter)
//{
	//room_goto_next();
//}

if keyboard_check(vk_enter) and global.openedFridge = true
{
instance_change(oOpenedDoor, true);
openedDoor = true;
}

//if keyboard_check(vk_enter) and global.keys = 0 and openedDoor = false
//{
//global.lockedDoor = true;
//}

