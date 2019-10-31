y += ySpeed;

if(y >= room_height-sprite_get_height(sCannon)-sprite_get_height(oAlternativeHolder)/2)
	instance_destroy(self);
	
if(!instance_exists(oAlternativeHolder) and !oLogicSpawner.alternativeGotHit){ // Checks if all holders have passed trough the screen and if the player couldn't hit any of them (omision).
	show_debug_message("[All Holders Deleted]");
	show_debug_message("[DT CORRECTION IN OMITION CASE]");
	
	if(oLogicSpawner.divisionType){ // Check which type of exersise was omitted.
		if(oLogicSpawner.actualSubDivisionApplies == 0){ // Check if the division doesn't appliy (can't entirely divide)
			if(oLogicSpawner.divisionCounter == 1)
				ds_list_add(oTable.numberOnePartials, oLogicSpawner.subDivisionNumber); // Same number is written down in table as a partial
			if(oLogicSpawner.divisionCounter == 2)
				ds_list_add(oTable.numberTwoPartials, oLogicSpawner.subDivisionNumber); // Same number is written down in table as a partial
		}
		else{
			if(oLogicSpawner.divisionCounter == 1)
				ds_list_add(oTable.numberOnePartials, oLogicSpawner.subDivisionNumber / oLogicSpawner.numberHit); // The number hit, which is the right division, is written down as a partial.
			if(oLogicSpawner.divisionCounter ==2)
				ds_list_add(oTable.numberTwoPartials, oLogicSpawner.subDivisionNumber / oLogicSpawner.numberHit); // The number hit, which is the right division, is written down as a partial.
		}
		oLogicSpawner.divisionCounter++;
		if(oLogicSpawner.divisionCounter <= 2) // There are only 2 subexersises where the player needs to divide.
			oLogicSpawner.alarm[1] = room_speed*1;
		else{
			oLogicSpawner.divisionCounter = 1; // Division subexersise counter reseted.
			oLogicSpawner.divisionAlternativesCreation = false; // No more divsision alternatives are created.
			oLogicSpawner.primeAlternativesCreation = true; // Time to create prime alternatives.
			show_debug_message("[ # # # RESET # # # ]"); // New exersise starts message.
		}
	}
	else{ // A prime type exersise has been omitted.
		oLogicSpawner.primeAlternativesCreation = true; // Time to create prime alternatives.
		show_debug_message("[REMEMBER] You must choose one correct prime number to continue");		
	}
}

