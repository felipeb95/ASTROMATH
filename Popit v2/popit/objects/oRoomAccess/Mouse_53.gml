if(global.Config == 1 || global.Config == 4){
	if(canStart || room_get_name(room) == "rWelcomeRoom")
		room_goto(rPlayRoom);

	if(canStart || room_get_name(room) == "rEndRoom")
		room_goto(rPlayRoom);
}
