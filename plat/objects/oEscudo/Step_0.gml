x = oPlayer.x;
y = oPlayer.y;

if(place_meeting(x,y,pShootable)){	
	with(instance_place(x,y,pShootable)){
		hp=0;
		flash = 3;
		hitfrom = other.direction;
	}
	instance_destroy();
}