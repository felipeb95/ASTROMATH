if(reverse)
	backgroundTimer -= colorRate;
else
	backgroundTimer += colorRate;
	
if(!reverse and backgroundTimer >= 255)
	reverse = true;

if(reverse and backgroundTimer <= 0)
	reverse = false;
	
y = y+fallSpeed;
if(y >= room_height){
	instance_destroy(self);
	oPlayerInfo.onBonus = false;	
}

if(instance_exists(oFeedback)){
	instance_destroy(self);	
}