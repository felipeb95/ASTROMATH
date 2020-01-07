if(global.Config == 1 and canStart){
	if(global.level <= global.totalLevels){
		var roomStr = "playRoom"+string(global.level);
		var asset = asset_get_index(roomStr);
		room_goto(asset);
	}
	
	global.playerState = 0;
}

if(room_get_name(room) == "endRoom"){
	global.level = 1;
	room_goto(welcomeRoom);
	show_debug_message("click");
}