/// difficultyAdapter()

if(global.errorCounter >= global.wrongCap){
	if(global.balls != global.minBalls){
		show_debug_message("[DIFFICULTY CHANGE] 3 balls less");
		global.balls -= 2;
	}
	else{
		show_debug_message("[DIFFICULTY CHANGE] Speed diminished");
		global.currentSpeed -= global.ballAceleration;
	}
}
else{
	if(global.balls != global.maxBalls){
		show_debug_message("[DIFFICULTY CHANGE] 3 balls added");
		global.balls += 2;
	}
	else{
		show_debug_message("[DIFFICULTY CHANGE] Speed increased");
		global.currentSpeed += global.ballAceleration;
	}
}

global.balls = clamp(global.balls, global.minBalls, global.maxBalls);
global.currentSpeed = clamp(global.currentSpeed, global.minSpeed, global.maxSpeed);
global.errorCounter = 0;