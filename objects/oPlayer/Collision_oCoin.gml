/// @description Insert description here
// You can write your code in this editor
array_push(oHUD.objectsDestroyed, other.objectID);
//when I collide with oCoin, destroy coin and boost points
instance_destroy(other);
global.coins += 1;

//global.points += 100;
