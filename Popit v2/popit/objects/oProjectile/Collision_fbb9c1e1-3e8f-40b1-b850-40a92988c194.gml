var numberHit = undefined;
with(other) // Only specifif instance collisioned.
	numberHit = numberOnHolder;

if(oLogicSpawner.primeType){
	if(oLogicSpawner.numberOne mod numberHit == 0 or oLogicSpawner.numberTwo mod numberHit == 0){ // Number on hit can entirely divide at least one of the exersise's numbers.
		show_debug_message("[PT Correct] "+string(numberHit)+" can entirely divide one of the numbers");
		ds_list_add(oTable.tableDivisors, numberHit);
		oLogicSpawner.numberHit = numberHit;
		//oLogicSpawner.divisionType = true;
		oLogicSpawner.divisionAlternativesCreation = true;
	}
	else
		show_debug_message("[PT Wrong] "+string(numberHit)+" can't entirely divide any of the numbers");
}

if(oLogicSpawner.divisionType){
	with(other){
		if(isCorrect){
			show_debug_message("[DT Correct]");
			
			
			if(applies == 0){
				if(oLogicSpawner.divisionCounter == 1)
					ds_list_add(oTable.numberOnePartials, oLogicSpawner.subDivisionNumber);
				if(oLogicSpawner.divisionCounter == 2)
					ds_list_add(oTable.numberTwoPartials, oLogicSpawner.subDivisionNumber);
			}
			else{
				if(oLogicSpawner.divisionCounter == 1)
					ds_list_add(oTable.numberOnePartials, numberHit);
				if(oLogicSpawner.divisionCounter == 2)
					ds_list_add(oTable.numberTwoPartials, numberHit);
			}
			
			oLogicSpawner.divisionCounter++;
			if(oLogicSpawner.divisionCounter <= 2)
				oLogicSpawner.alarm[1] = room_speed*1;
			else{
				oLogicSpawner.divisionCounter = 1;
				oLogicSpawner.divisionAlternativesCreation = false;
				oLogicSpawner.primeAlternativesCreation = true;
				show_debug_message("[ # # # RESET # # # ]");
			}
		}
		else
			show_debug_message("[DT Wrong]");
	}
}

with(oAlternativeHolder) // Looping through all instances of oAlternativeHolder
	instance_destroy(self); // This will delete the instance of oAlternativeHolder
