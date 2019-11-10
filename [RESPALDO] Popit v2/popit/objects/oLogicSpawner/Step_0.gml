if(primeAlternativesCreation){
	alternativeGotHit = false;
	show_debug_message("[PRIME TYPE]");
	primeType = true;
	if(ds_list_empty(oTable.numberOnePartials) and exersiseJustCreated){ // This means that the exersise is new. A pair of numbers needs to be selected.
		randomize();
		audio_play_sound(sndNewRound,10,false);
		numberOne = irandom_range(minNumber,maxNumber); // Number chosen randomly;
		actualNumberOne = numberOne;
		numberOneHeader = numberOne;
		numberTwo = numbersElection(numberOne, minNumber, maxNumber); // Number chosen from script.
		actualNumberTwo = numberTwo;
		numberTwoHeader = numberTwo;
		findPrimeNumbers(numberOne, numberTwo, primeNumbersFound);  // All prime numbers below the biggest of the number pair.
		findUsefulPrimeNumbers(numberOne, numberTwo, primeNumbersFound, alternativesList, wrongAlternativesList); // All prime numbers that work for the number pair.
		show_debug_message("[Empty partials list]");
		show_debug_message("[NUMBERS ON INIT] "+string(numberOne) +" and "+string(numberTwo));
	}
	else{
		if(!ds_list_empty(oTable.numberOnePartials)){ // Should only check the list if it's not empty to take numbers.
			show_debug_message("[Not empty partials list] Getting Recent.");
			subDivisionNumber = undefined;
			numberOne = oTable.numberOnePartials[| ds_list_size(oTable.numberOnePartials)-1];
			actualNumberOne = numberOne;
			numberTwo = oTable.numberTwoPartials[| ds_list_size(oTable.numberTwoPartials)-1];
			actualNumberTwo = numberTwo;
		}
		show_debug_message("[Not empty partials list] Exersise of prime numbers selection.");
		show_debug_message("[NUMBERS AFTER INIT] "+string(numberOne) +" and "+string(numberTwo));
	}
	exersiseJustCreated = false; // Exersise is not new anymore. This only changes to true when multiplying phase is done.
	multiplyingType = false;
	divisionType = false;
	alarm[0] = timeForNextCreation; //  One tenth of a second delay after trigger.	.	
	primeAlternativesCreation = false;
}

if(divisionAlternativesCreation){
	show_debug_message("[DIVISION TYPE]");
	alternativeGotHit = false;
	primeType = false;
	divisionType = true;
	alarm[1] = timeForNextCreation; //  One tenth of a second delay after trigger.		
	divisionAlternativesCreation = false;
}

if(multiplyAlternativesCreation){
	show_debug_message("[Phase 2 under construction]");
	show_debug_message("[MULTIPLYING TYPE]");
	divisionType = false;
	multiplyingType = true;
	
	if(multiplierJustCreated){
		ds_list_copy(oTable._tableDivisors, oTable.tableDivisors);
		multiplierJustCreated = false;
	}
		
	if(ds_list_size(oTable._tableDivisors) > 1)
		alarm[2] = 1; //  One tenth of a second delay after trigger.	
	else
		show_debug_message("[MT STOPS]");
	alternativeGotHit = false;
	multiplyAlternativesCreation = false;
	show_debug_message("[MT last instruction]");
}