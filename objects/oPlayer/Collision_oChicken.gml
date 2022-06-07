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


