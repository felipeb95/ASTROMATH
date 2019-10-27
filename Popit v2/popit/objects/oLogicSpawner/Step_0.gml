if(primeAlternativesCreation){
	primeType = true;
	if(ds_list_empty(oTable.numberOnePartials)){ // This means that the exersise is new. A pair of numbers needs to be selected.
		numberOne = 14; // Number chosen from script.
		actualNumberOne = numberOne;
		numberOneHeader = numberOne;
		numberTwo = 15; // Number chosen from script.
		actualNumberTwo = numberTwo;
		numberTwoHeader = numberTwo;
		findPrimeNumbers(numberOne, numberTwo, primeNumbersFound);  // All prime numbers below the biggest of the number pair.
		findUsefulPrimeNumbers(numberOne, numberTwo, primeNumbersFound, alternativesList); // All prime numbers that work for the number pair.
		show_debug_message("[Empty partials list]");
	}
	else{
		subDivisionNumber = undefined;
		numberOne = oTable.numberOnePartials[| ds_list_size(oTable.numberOnePartials)-1];
		actualNumberOne = numberOne;
		numberTwo = oTable.numberTwoPartials[| ds_list_size(oTable.numberTwoPartials)-1];
		actualNumberTwo = numberTwo;
		show_debug_message("[Not empty partials list] Exersise of prime numbers selection.");
	}
	divisionType = false;
	alarm[0] = room_speed*1; // One second Delay after trigger.	
	primeAlternativesCreation = false;
}

if(divisionAlternativesCreation){
	primeType = false;
	divisionType = true;
	alarm[1] = room_speed*1; // One second Delay after trigger.	
	divisionAlternativesCreation = false;
}