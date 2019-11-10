randomize();

/* Creation of alternatives holders */

ds_list_shuffle(alternativesList); // Shuffle for random appearance.
var alternativesListSize = ds_list_size(alternativesList);
var _wrongAlternativesList = ds_list_size(wrongAlternativesList);
var _alternativesList = ds_list_create(); // New list to extract possible numubers.
var _wrongAlternativesList = ds_list_create();
ds_list_copy(_alternativesList,alternativesList); // Original list is copied inside the new list so it's not modified.
ds_list_copy(_wrongAlternativesList, wrongAlternativesList);
var alternativesCreated = 0;

/* The next For loop will only add as alternative those that actually are useful to advance in the exersise */
for(i = 0; i < alternativesListSize; i++){
	var xPositionSelected = irandom_range(0,ds_list_size(xPositionsList)-1);
	var alternativeSelected = irandom_range(0,ds_list_size(_alternativesList)-1);
	show_debug_message("[X POS SEL] "+string(xPositionSelected));
	//var alternativeHolderInst = instance_create_depth(xPositionsList[| xPositionSelected], -1*sprite_get_height(sAlternativeHolder), -1000, oAlternativeHolder);
	var alternativeHolderInst = instance_create_depth(xPositionsList[| xPositionSelected], -1*sprite_get_height(sAlternativeHolder), -1000, oAlternativeHolder);
	show_debug_message("CREATED!");
	with(alternativeHolderInst)
		numberOnHolder = _alternativesList[| alternativeSelected];	
	
	alternativesCreated++;
	ds_list_delete(xPositionsList,xPositionSelected);
	ds_list_delete(_alternativesList, alternativeSelected);
}

/* The next For loop will only add as alternative those that are NOT useful to advance in the exersise */
var wrongAlternativesListSize = ds_list_size(_wrongAlternativesList);
for(i = 0; i < wrongAlternativesListSize; i++){
	if(alternativesCreated == numberOfPrimeAlternatives)
		break;
	xPositionSelected = irandom_range(0, ds_list_size(xPositionsList)-1);
	alternativeSelected = irandom_range(0,ds_list_size(_wrongAlternativesList)-1);
	var alternativeHolderInst = instance_create_depth(xPositionsList[| xPositionSelected], -1*sprite_get_height(sAlternativeHolder), -1000, oAlternativeHolder);
	show_debug_message("CREATED!");
	with(alternativeHolderInst)
		numberOnHolder = _wrongAlternativesList[| alternativeSelected];
	alternativesCreated++;
	ds_list_delete(xPositionsList,xPositionSelected);
	ds_list_delete(_wrongAlternativesList, alternativeSelected);
}

/* The next For loop iterates until the number of alternatives needed is reached. It will add in the range of [biggestValue+1, biggestValue+10] */
var randomNumbersList = undefined;
var alternativesNeeded = numberOfPrimeAlternatives - alternativesListSize - wrongAlternativesListSize;
var biggestNumber = max(numberOneHeader,numberTwoHeader);
if(alternativesNeeded > 0){	// Need to create more.
	randomNumbersList = numbersAboveBiggest(biggestNumber + 1 , biggestNumber + 6);
	show_debug_message("[MORE ALTERNATIVES NEEDED] Quantity needed: "+string(alternativesNeeded));
	for(i = 0; i < alternativesNeeded; i++){
		if(alternativesCreated == numberOfPrimeAlternatives)
			break;
		xPositionSelected = irandom_range(0, ds_list_size(xPositionsList)-1);
		alternativeSelected = irandom_range(0,ds_list_size(randomNumbersList)-1);
		var alternativeHolderInst = instance_create_depth(xPositionsList[| xPositionSelected], -1*sprite_get_height(sAlternativeHolder), -1000, oAlternativeHolder);
		show_debug_message("CREATED!");
		with(alternativeHolderInst)
			numberOnHolder = randomNumbersList[| alternativeSelected];
		alternativesCreated++;
		ds_list_delete(xPositionsList,xPositionSelected);
		ds_list_delete(randomNumbersList, alternativeSelected);
	}
	ds_list_destroy(randomNumbersList);
}
else
	show_debug_message("[MAX ALTERNATIVES REACHED] Quantity needed: "+string(alternativesNeeded));

/* POSSIBLE BONUS APPEARANCE */
var _bonusProbability = random_range(0,1);
var xBonusPositionSelected = irandom_range(0,ds_list_size(xPositionsList)-1);
if(_bonusProbability <= bonusProbability){
	show_debug_message("[BONUS CREATION]");
	instance_create_depth(xPositionsList[| xBonusPositionSelected], -1*sprite_get_height(sBonusBase), -999, oBonus);
}


ds_list_destroy(_alternativesList); // Cleared to clean adresses memory.
ds_list_clear(xPositionsList); // List cleared for next creation of alternatives.
xPositionsReFill(xPositionsList, xLeftLimit, xRightLimit, alternativeHolderWidth, xDistance); // List filled.