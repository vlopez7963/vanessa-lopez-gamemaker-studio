/// @description

if global.coins >=2 and keyboard_check(vk_enter)
{
instance_destroy(other);
global.coins -=2;
global.watermelon = true
}
