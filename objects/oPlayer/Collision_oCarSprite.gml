/// @description Insert description here
// You can write your code in this editor
enterCar = true

if enterCar and keyboard_check(vk_enter)
{
	enteredCar = true;
	instance_change(oCar, true);
	instance_destroy(other);
}

