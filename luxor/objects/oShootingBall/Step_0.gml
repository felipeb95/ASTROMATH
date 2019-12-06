if(travel)
	y = y-5;
else{
	x = oBallShooter.x;
	y = initialY;
}

if(y <= 0)
	travel = false;
