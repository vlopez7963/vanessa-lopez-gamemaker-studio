//code that runs when player is created

canJump = true;

//how many pixels per frame we want the player to move
xSpeed = 4;

//what direction the player is facing (where 1 = right, -1 = left, 0 = front/not moving)
xDirection = 0;

//how fast and what direction player is moving 
xVector = xSpeed * xDirection;

yVector = 0;

//gravity levels
grv = 0.3;
jumpForce = -6;


//invincibility
isInvincible = false;

//health points
hp = 6;

//level timer
levelTimer = 35;

// speed boost
boost = false;

enterCar = false;
enteredCar = false;

enum states
{
	walking,
	jumping,
	idle
}
state = states.idle;

state_array[states.walking] = StatePlayerWalking;
state_array[states.jumping] = StatePlayerJumping;
state_array[states.idle] = StatePlayerIdle;

sprite_array[states.walking] = sPlayerWalking;
sprite_array[states.jumping] = sPlayerJumping;
sprite_array[states.idle] = sPlayerIdle;


