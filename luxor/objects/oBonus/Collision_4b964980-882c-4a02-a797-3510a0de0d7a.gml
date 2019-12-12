switch(image_index){	
	case 0:
		oPlayerInfo.freezeBonus = true;
	break;
	
	case 1:
		oPlayerInfo.slowBonus = true;
	break;
	
	case 2:
		oPlayerInfo.reverseBonus = true;
	break;
	
	default:
	break;
	
}
oPlayerInfo.alarm[1] = room_speed*4;
instance_destroy(self);