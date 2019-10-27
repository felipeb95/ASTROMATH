var numberHit = undefined;
with(other) // Only specifif instance collisioned.
	numberHit = numberOnHolder;

if(oLogicSpawner.primeType){
	if(oLogicSpawner.numberOne mod numberHit == 0 or oLogicSpawner.numberTwo mod numberHit == 0){ // Number on hit can entirely divide at least one of the exersise's numbers.
		show_debug_message("[Correct] "+string(numberHit)+" can entirely divide one of the numbers");
		ds_list_add(oTable.tableDivisors, numberHit);
		oLogicSpawner.divisionType = true;
		oLogicSpawner.divisionAlternativesCreation = true;
	}
	else
		show_debug_message("[Wrong] "+string(numberHit)+" can't entirely divide any of the numbers");
}

if(oLogicSpawner.divisionType){
		
}

with(oAlternativeHolder) // Looping through all instances of oAlternativeHolder
	instance_destroy(self); // This will delete the instance of oAlternativeHolder
