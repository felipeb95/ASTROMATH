canClick = false;

if(room_get_name(room) == "endRoom"){
	var lay_id = layer_get_id("Background");
	var back_id = layer_background_get_id(lay_id);
	if global.Config == 2
	{
	    layer_background_sprite(back_id, sEndRoomBgMobile);
	}
	else
		layer_background_sprite(back_id, sEndRoomBg);
}