if(global.Config == 2 and canStart){	
	if(global.level > global.totalLevels){
		var roomStr = "playRoom"+string(global.level);
		var asset = asset_get_index(roomStr);
		room_goto(asset);
	}
	else
		room_goto(welcomeRoom);
	
	global.playerState = 0;
}