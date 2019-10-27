randomize();
/* Storing of prime numbers and alternatives in spawner's lists */

primeNumbersString = "[ ";
alternativesString = "[ ";
xPositionsString = "[ ";

findPrimeNumbers(numberOne, numberTwo, primeNumbersFound);
for(i = 0; i < ds_list_size(primeNumbersFound); i++){
	primeNumbersString += string(primeNumbersFound[| i])+" ";
}

findUsefulPrimeNumbers(numberOne, numberTwo, primeNumbersFound, alternativesList);
for(i = 0; i < ds_list_size(alternativesList); i++){
	alternativesString += string(alternativesList[| i])+" ";
}

for(i = 0; i < ds_list_size(xPositionsList); i++){
	xPositionsString += string(xPositionsList[| i])+" ";
}

primeNumbersString += " ]";
alternativesString += " ]";
xPositionsString += " ]";

show_debug_message(primeNumbersString);
show_debug_message(alternativesString);
show_debug_message(xPositionsString);

/* Creation of alternatives holders */

ds_list_shuffle(alternativesList); // Shuffle for random appearance.
var positionsListSize = ds_list_size(xPositionsList);
var alternativesListSize = ds_list_size(alternativesList);
var _alternativesList = ds_list_create(); // New list to extract possible numubers.
ds_list_copy(_alternativesList,alternativesList); // Original list is copied inside the new list so it's not modified.

/* The next For loop will only add as alternative those that actually are useful to advance in the exersise */
for(i = 0; i < alternativesListSize; i++){
	var xPositionSelected = irandom_range(0,ds_list_size(xPositionsList)-1);
	var alternativeSelected = irandom_range(0,ds_list_size(_alternativesList)-1);
	var alternativeHolderInst = instance_create_depth(xPositionsList[| xPositionSelected], -100, -1000, oAlternativeHolder);
	
	with(alternativeHolderInst)
		numberOnHolder = _alternativesList[| alternativeSelected];	
	
	
	ds_list_delete(xPositionsList,xPositionSelected);
	ds_list_delete(_alternativesList, alternativeSelected);
}

ds_list_destroy(_alternativesList); // Cleared to clean adresses memory.

ds_list_clear(xPositionsList); // List cleared for next creation of alternatives.
xPositionsReFill(xPositionsList, xLeftLimit, xRightLimit, alternativeHolderWidth, xDistance); // List filled.