y += ySpeed;

if(y >= room_height-sprite_get_height(sCannon)-sprite_get_height(oAlternativeHolder)/2)
	instance_destroy(self);
	
if(!instance_exists(oAlternativeHolder) and !oLogicSpawner.subDivisionAnswered){
	show_debug_message("[All Holders Deleted]");
	show_debug_message("[DT CORRECTION]");
	
	if(oLogicSpawner.actualSubDivisionApplies == 0){ // Check if the division doesn't appliy (can't entirely divide)
		if(oLogicSpawner.divisionCounter == 1)
			ds_list_add(oTable.numberOnePartials, oLogicSpawner.subDivisionNumber); // Same number is written down in table as a partial
		if(oLogicSpawner.divisionCounter == 2)
			ds_list_add(oTable.numberTwoPartials, oLogicSpawner.subDivisionNumber); // Same number is written down in table as a partial
		}
		else{ // It does apply, meaning that it can be entirely divided.
			if(oLogicSpawner.divisionCounter == 1)
				ds_list_add(oTable.numberOnePartials, oLogicSpawner.subDivisionNumber / oLogicSpawner.numberHit); // The number hit, which is the right division, is written down as a partial.
			if(oLogicSpawner.divisionCounter == 2)
				ds_list_add(oTable.numberTwoPartials, oLogicSpawner.subDivisionNumber / oLogicSpawner.numberHit); // The number hit, which is the right division, is written down as a partial.
		}
		oLogicSpawner.divisionCounter++;
			
		if(oLogicSpawner.divisionCounter <= 2) // Only if the the divisionCounter (number of subdivision exersise) is less equel or less than, the alarm is triggered
			oLogicSpawner.alarm[1] = room_speed*1;
		else{ // Alarm isn't triggered because the 2 division subexersises have been done.
			oLogicSpawner.divisionCounter = 1; // Division subexersise counter reseted.
			oLogicSpawner.divisionAlternativesCreation = false; // No more divsision alternatives are created.
			oLogicSpawner.primeAlternativesCreation = true; // Time to create prime alternatives.
			show_debug_message("[ # # # RESET # # # ]"); // New exersise starts message.
		}
}

