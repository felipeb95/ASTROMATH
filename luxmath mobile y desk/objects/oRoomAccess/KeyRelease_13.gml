if(global.Config != 2){
	var roomStr = "playRoom"+string(global.level);
	var asset = asset_get_index(roomStr);
	room_goto(asset);
	
	global.playerState = 0;
}