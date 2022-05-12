/// @description Insert description here
// You can write your code in this editor

//when I collide with oCoin, destroy coin and boost points
if global.coins >=2
{
instance_destroy(other);
global.coins -=2
}
