if(travel)
	y = y-15;
else{
	x = oBallShooter.x;
	y = initialY+sprite_height/2;
}

if(y <= 0)
	travel = false;
