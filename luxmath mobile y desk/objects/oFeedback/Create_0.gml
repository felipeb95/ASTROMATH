alarm[0] = room_speed*2.5;
ballSpeed = undefined;
bonusSpeed = undefined;
bonusActive = false;
text = undefined;


if(instance_exists(oBall)){
	with(oBall){
		//oFeedback.ballSpeed = path_speed;
		path_speed = 0;	
	}
}

if(instance_exists(oBonus)){
	bonusActive = true;
	with(oBonus){
		oFeedback.bonusSpeed = fallSpeed;
		fallSpeed = 0;	
	}
}


	

