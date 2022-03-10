/// @description Insert description here
// You can write your code in this editor
enterShip = true

if enterShip and keyboard_check(vk_enter)
{
	enteredShip = true;
	instance_change(oCar, true);
	instance_destroy(other);
}

