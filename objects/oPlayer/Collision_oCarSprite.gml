/// @description

enterCar = true

if enterCar and keyboard_check(vk_enter)
{
	enteredCar = true;
	instance_change(oCar, true);
	instance_destroy(other);
}
