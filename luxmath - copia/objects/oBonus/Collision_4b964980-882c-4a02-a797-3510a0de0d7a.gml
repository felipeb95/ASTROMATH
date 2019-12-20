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
	
	case 3:
		oShootingBall.image_index = 1;
		oShootingBall.multiBonus = true;
	break;
	case 4:
		oShootingBall.image_index = 2;
		oShootingBall.exploBonus = true;
	break;
	
	default:
	break;
	
}
oPlayerInfo.alarm[1] = room_speed*4;
show_debug_message("col with ballshooter alarm set");
instance_destroy(self);