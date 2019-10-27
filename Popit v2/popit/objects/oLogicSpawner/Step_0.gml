if(primeAlternativesCreation){
	divisionType = false;
	alarm[0] = room_speed*1; // One second Delay after trigger.	
	primeAlternativesCreation = false;
}

if(divisionAlternativesCreation){
	primeType = false;
	alarm[1] = room_speed*1; // One second Delay after trigger.	
	divisionAlternativesCreation = false;
}