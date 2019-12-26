
if(oPlayerProperties.playersHp == 0){
	global.playersScore = oPlayerProperties.playersScore;
	sendToPHP(oDataSaver.gameMap);
	room_goto(rEndRoom);
}
else
	switch(type){
		case "prime":
			if(isCorrect){
				show_debug_message("[ PT Feedback Flag Change]");
				oLogicSpawner.divisionAlternativesCreation = true;
				oLogicSpawner.subDivisionAnswered = true;	
			}
			else{
				oLogicSpawner.primeAlternativesCreation = true; // Time to create prime alternatives.
			}
		break;
		
		case "division":
			show_debug_message("[ DT Feedback Flag Change]");
			var localDivCounter = oLogicSpawner.divisionCounter;
			oLogicSpawner.divisionCounter++;
			
			if(oLogicSpawner.divisionCounter <= 2) // Only if the the divisionCounter (number of subdivision exersise) is less equel or less than, the alarm is triggered
				oLogicSpawner.alarm[1] = oLogicSpawner.timeForNextCreation;
			else{ // Alarm isn't triggered because the 2 division subexersises have been done.
				oLogicSpawner.divisionCounter = 1; // Division subexersise counter reseted.
				oLogicSpawner.divisionAlternativesCreation = false; // No more divsision alternatives are created.
				
				if(localDivCounter == 2 and oTable.numberOnePartials[| ds_list_size(oTable.numberOnePartials)-1] == 1 and  oTable.numberTwoPartials[| ds_list_size(oTable.numberTwoPartials)-1] == 1){
					oLogicSpawner.phaseOneFinished = true;
				}
				else{
					oLogicSpawner.primeAlternativesCreation = true; // Time to create prime alternatives.
				}
			}
		break;
			
		case "multiplying":
			show_debug_message("[ MT Feedback Flag Change]");
			if(ds_list_size(oTable._tableDivisors) == 1){ // Only one result. Round finished.
				
				if(global.grupo == 1){
					if(global.nOneWrongCounter >= global.nOneWrongCap or global.nTwoWrongCounter >= global.nTwoWrongCap)
						global.memoria[oLogicSpawner.numberOneHeader,oLogicSpawner.numberTwoHeader] = 1;
					else
						global.memoria[oLogicSpawner.numberOneHeader,oLogicSpawner.numberTwoHeader] = 2;
				}
					
				oTable.alarm[0] = room_speed*0.1;
			}
			oLogicSpawner.multiplyAlternativesCreation = true;
			break;
	}