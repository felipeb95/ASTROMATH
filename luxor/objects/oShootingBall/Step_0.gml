if(travel)
	y = y-ballSpeed;
else{
	x = oBallShooter.x;
	y = initialY+sprite_height/2;
}

if(y <= 0)
	travel = false;
