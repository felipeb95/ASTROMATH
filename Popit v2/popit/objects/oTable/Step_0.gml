if(oLogicSpawner.phaseOneFinished and !ds_list_empty(numberOnePartials) and !ds_list_empty(numberTwoPartials)){ // If numbers are reduced to 1, then it's time to multiply their common primes.
	if(numberOnePartials[| ds_list_size(numberOnePartials)-1] == 1 and  numberTwoPartials[| ds_list_size(numberTwoPartials)-1] == 1){
		oLogicSpawner.primeAlternativesCreation = false;
		oLogicSpawner.divisionAlternativesCreation = false;
		oLogicSpawner.multiplyAlternativesCreation  = true; // For changing to multiply phase and set Spawner's flag for alternatives creation on Alarm 2.
		oLogicSpawner.primeType = false;
		oLogicSpawner.divisionType = false;
		ds_list_clear(oLogicSpawner.primeNumbersFound);
		ds_list_clear(oLogicSpawner.alternativesList);
		multiplyMessage = true;
	}
	oLogicSpawner.phaseOneFinished = false;
	show_debug_message("END");
}


// \u00b7
if(ds_list_size(_tableDivisors) >= 2){
	strMarked = string(_tableDivisors[| 0]) +" x "+ string(tableDivisors[| 1]); // \u2022 is the times dot symbol.
	strNotMarked = "";
	if(ds_list_size(_tableDivisors) > 2){
		for(i = 2 ; i < ds_list_size(_tableDivisors); i++){
			strNotMarked += " x "+string(_tableDivisors[| i]); 	
		}
	}
} 
else{
	strMarked = string(_tableDivisors[| 0]);
	strNotMarked = "";
}

listX = string_width(strMarked+strNotMarked);