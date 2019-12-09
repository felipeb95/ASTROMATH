if(path_position == 1){
	instance_destroy(self);
	show_debug_message("BALL DELETED AT PATH POSITION 1");
	if(!instance_exists(oBall)){
		show_debug_message("### GAME OVER ###");
		room_goto(welcomeRoom);
	}
}
