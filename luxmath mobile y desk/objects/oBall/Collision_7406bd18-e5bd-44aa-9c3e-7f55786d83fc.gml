if(!other.ballReached){
	with(oBall){
		path_speed = 5;
		canBeShot = false;
		if(type == "number")
			sprite_index = 0;
		else
			sprite_index = 1;
	}
	//other.ballReached = true;
	instance_destroy(self);
	show_debug_message("Ball destroyed");
}


if(!instance_exists(oBall)){
	show_debug_message("### GAME OVER ###");
	difficultyAdapter();
	global.playerState = -1;
	room_goto(transitionRoom);
}