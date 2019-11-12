/* Bubble highlight on bonus catch */

if(blinks <= 2){
	highlight = true;
	blinks++;
	if(blinks > 2)
		highlight = false;
	else
		alarm[1] = room_speed*2;
}