/// @description Insert description here
// You can write your code in this editor
openFridge = true;



//if openDoor and keyboard_check(vk_enter)
//{
	//room_goto_next();
//}

if keyboard_check(vk_enter) and global.milkItem = true
{
instance_change(oOpenedFridgeMilk, true);
global.openedFridgeEnd = true
}

if keyboard_check(vk_enter) and global.fishItem = true
{
instance_change(oOpenedFridgeFish, true);
global.openedFridgeEnd = true
}

if keyboard_check(vk_enter) and global.twoItems = true
{
instance_change(oOpenedFridgeTwoItems, true);
global.openedFridgeEnd = true
}

if keyboard_check(vk_enter) and global.allItems = true
{
instance_change(oOpenedFridgeAllItems, true);
global.openedFridgeEnd = true
}

//if keyboard_check(vk_enter)
//{
//instance_change(oOpenedFridge, true);
//global.openedFridgeEnd = true
//}




