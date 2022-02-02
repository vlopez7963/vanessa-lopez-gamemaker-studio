//code that runs when player is created
//how many pixels per frame we want the player to move
xSpeed = 4;

//what direction the player is facing (where 1 = right, -1 = left, 0 = front/not moving)
xDirection = 0;

//how fast and what direction player is moving 
xVector = xSpeed * xDirection;

yVector = 0;

//gravity levels
grv = 0.3;
jumpForce = -10;

//coins and points
global.coins = 0;

//invincibility
isInvincible = false;

//health points
hp = 6;

//level timer
levelTimer = 36;

