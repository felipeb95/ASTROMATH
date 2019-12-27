if(global.Config == 0){
	instance_destroy();
}
leftCheck = noone;
rightCheck = noone;
jumpCheck = noone;
shootCheck = noone;
instCatch = noone;

leftFinger = 0; // Can be -1 (left), 0 (no movement) or 1 (right)
rightFinger = 0 // Can be -1 (shooting) or 1 (jump)
stopped = false;
justJumped = false;
justCofre = false;