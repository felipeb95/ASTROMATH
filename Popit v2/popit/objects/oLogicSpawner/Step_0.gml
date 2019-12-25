if(primeAlternativesCreation){
	alternativeGotHit = false;
	show_debug_message("[PRIME TYPE]");
	primeType = true;
	if(ds_list_empty(oTable.numberOnePartials) and exersiseJustCreated){ // This means that the exersise is new. A pair of numbers needs to be selected.
		randomize();
		audio_play_sound(sndNewRound,10,false);
		if(global.grupo==0){
			global.origen = "Random";
			numberOne = irandom_range(minNumber,maxNumber); // Number chosen randomly;
			numberTwo = numbersElection(numberOne, minNumber, maxNumber); // Number chosen from script.
			
		}
		if(global.grupo==1){
			var indice = random_range(0,1);
			var memBuenasA = undefined;
			var memMalasA = undefined;
			var memNuevasA = undefined;
			var memBuenasB = undefined;
			var memMalasB = undefined;
			var memNuevasB = undefined;
			var iB = 0;
			var iM = 0;
			var iN = 0;
			for(var i=minNumber;i<=maxNumber;i++){
				for(var j=minNumber;j<=maxNumber;j++){
					if(global.memoria[i,j] == 2){
						memBuenasA[iB] = i;
						memBuenasB[iB] = j;
						iB++;
					}
					if(global.memoria[i,j] == 1){
						memMalasA[iM] = i;
						memMalasB[iM] = j;
						iM++;
					}
					if(global.memoria[i,j] == 0){
						memNuevasA[iN] = i;
						memNuevasB[iN] = j;
						iN++;
					}
				}
			}
			show_debug_message(indice);
			if(indice<global.porcBuenas){ //BUENAS
				if(iB>2){
					global.origen = "Buenas";
					var sel = irandom_range(0,iB-1);
					numberOne = memBuenasA[sel];
					numberTwo = memBuenasB[sel];
				}
				else indice = global.porcBuenas;
			}
			if(indice>(1-global.porcMalas)){ //MALAS
				if(iM>2){
					global.origen = "Malas";
					var sel = irandom_range(0,iM-1);
					numberOne = memMalasA[sel];
					numberTwo = memMalasB[sel];
				}
				else indice = global.porcBuenas;
			
			}
			if(indice>=global.porcBuenas and indice<=(1-global.porcMalas)){ //NUEVAS
				if(iN>0){
					global.origen = "Nuevas";
					var sel = irandom_range(0,iN-1);
					numberOne = memNuevasA[sel];
					numberTwo = memNuevasB[sel];
				}
				else{
					numberOne = irandom_range(minNumber,maxNumber);	
					numberTwo = numbersElection(numberOne, minNumber, maxNumber);
				}
			}
		}
		show_debug_message(global.origen);
		
		
		
		//NUMBER 1
		actualNumberOne = numberOne;
		numberOneHeader = numberOne;
		
		//NUMBER 2
		actualNumberTwo = numberTwo;
		numberTwoHeader = numberTwo;
		findPrimeNumbers(numberOne, numberTwo, primeNumbersFound);  // All prime numbers below the biggest of the number pair.
		findUsefulPrimeNumbers(numberOne, numberTwo, primeNumbersFound, alternativesList, wrongAlternativesList); // All prime numbers that work for the number pair.
		show_debug_message("[Empty partials list]");
		show_debug_message("[NUMBERS ON INIT] "+string(numberOne) +" and "+string(numberTwo));
		exercise++;
		findFactorizationNumber(numberOne, alternativesList);
		findFactorizationNumber(numberTwo, alternativesList);
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
		alarm[2] = timeForNextCreation; //  One tenth of a second delay after trigger.	
	else
		show_debug_message("[MT STOPS]");
	alternativeGotHit = false;
	multiplyAlternativesCreation = false;
	show_debug_message("[MT last instruction]");
}