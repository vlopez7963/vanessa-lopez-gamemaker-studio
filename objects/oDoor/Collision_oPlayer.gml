/// @description Insert description here
// You can write your code in this editor
openDoor = true



//if openDoor and keyboard_check(vk_enter)
//{
	//room_goto_next();
//}
if openDoor and keyboard_check(vk_enter) and global.keys >=1
{
instance_change(oOpenedDoor, true);
openedDoor = true
global.keys -=1
}

