if(!phaseOneFinished and !ds_list_empty(numberOnePartials) and !ds_list_empty(numberTwoPartials)){ // If numbers are reduced to 1, then it's time to multiply their common primes.
	if(numberOnePartials[| ds_list_size(numberOnePartials)-1] == 1 and  numberTwoPartials[| ds_list_size(numberTwoPartials)-1] == 1){
		oLogicSpawner.primeAlternativesCreation = false;
		oLogicSpawner.divisionAlternativesCreation = false;
		ds_list_clear(oLogicSpawner.primeNumbersFound);
		ds_list_clear(oLogicSpawner.alternativesList);
		phaseOneFinished = true;
		alarm[0] = room_speed*3; // For changing to multiply phase and set Spawner's flag for alternatives creation on Alarm 2.
	}
}

