if(instance_exists(oBall)){
	with(oBall){
		//path_speed = oPlayerInfo.onBonus ? initialSpeed : oFeedback.ballSpeed;	
		path_speed = initialSpeed;
	}
}

if(bonusActive){
	if(instance_exists(oBonus)){
		with(oBonus){
			fallSpeed = oFeedback.bonusSpeed;	
		}
	}
}

instance_destroy(self);
oPlayerInfo.alarm[1] = 1;
