/// @description Insert description here
// You can write your code in this editor

//code that runs when player is created

//how many pixels per frame we want the player to move
xSpeed = 7;

//what direction the player is facing (where 1 = right, -1 = left, 0 = front/not moving)
xDirection = 0;

//how fast and what direction player is moving 
xVector = xSpeed * xDirection;

yVector = 0;

//gravity levels
grv = 0.3;
jumpForce = -4;


//invincibility
isInvincible = false;

//health points
hp = 6;

//level timer
levelTimer = 35;

// speed boost
boost = false;

