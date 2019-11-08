y += ySpeed;
//image_angle += rotation;

if(scale){
	//show_debug_message("[HOLDER "+string(numberOnHolder)+"] Scaling up");
	image_yscale += yScaleRate;
	if(image_yscale >= yScaleMax)
		scale = !scale;
}
else{
	//show_debug_message("[HOLDER] "+string(numberOnHolder)+" Scaling down");
	image_yscale -= yScaleRate;
	if(image_yscale <= yScaleMin)
		scale = !scale;
}
	


if(y >= room_height-sprite_get_height(sCannon)-sprite_get_height(sAlternativeHolder)/2)
	instance_destroy(self);
	
if(!instance_exists(oAlternativeHolder) and !oLogicSpawner.alternativeGotHit){ // Checks if all holders have passed trough the screen and if the player couldn't hit any of them (omision).
	oPlayerProperties.playersScore -= 10;
	audio_play_sound(sndOmision,10,false);
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
		show_debug_message("[SUB DIVISION] It's on number: "+string(oLogicSpawner.divisionCounter));
		var localDivCounter = oLogicSpawner.divisionCounter;
		oLogicSpawner.divisionCounter++;
		if(oLogicSpawner.divisionCounter <= 2) // There are only 2 subexersises where the player needs to divide.
			oLogicSpawner.alarm[1] = room_speed*1;
		else{
			oLogicSpawner.divisionCounter = 1; // Division subexersise counter reseted.
			oLogicSpawner.divisionAlternativesCreation = false; // No more divsision alternatives are created.
			oLogicSpawner.primeAlternativesCreation = true; // Time to create prime alternatives.
			show_debug_message("[ # # # RESET # # # ]"); // New exersise starts message.
		}
		
		if(localDivCounter == 2 and oTable.numberOnePartials[| ds_list_size(oTable.numberOnePartials)-1] == 1 and  oTable.numberTwoPartials[| ds_list_size(oTable.numberTwoPartials)-1] == 1){
			oLogicSpawner.phaseOneFinished = true;
		}
	}
	else if(oLogicSpawner.multiplyingType){
			audio_play_sound(sndOmision,10,false);
			tableDivisorsReorder(oTable.tableDivisors); // Table reoder.
			show_debug_message("[MT OMISION]");
			if(ds_list_size(oTable.tableDivisors) == 1){ // Only one result. Round finished.
				oTable.alarm[0] = room_speed*1;
			}
	}
	else{ // A prime type exersise has been omitted.
		oLogicSpawner.primeAlternativesCreation = true; // Time to create prime alternatives.
		show_debug_message("[REMEMBER] You must choose one correct prime number to continue");		
	}
}

