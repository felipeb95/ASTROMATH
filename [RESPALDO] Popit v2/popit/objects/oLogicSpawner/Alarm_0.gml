randomize();

/* Creation of alternatives holders */

ds_list_shuffle(alternativesList); // Shuffle for random appearance.
var alternativesListSize = ds_list_size(alternativesList);
var _alternativesList = ds_list_create(); // New list to extract possible numubers.
ds_list_copy(_alternativesList,alternativesList); // Original list is copied inside the new list so it's not modified.

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
	
	
	ds_list_delete(xPositionsList,xPositionSelected);
	ds_list_delete(_alternativesList, alternativeSelected);
}

ds_list_destroy(_alternativesList); // Cleared to clean adresses memory.

ds_list_clear(xPositionsList); // List cleared for next creation of alternatives.
xPositionsReFill(xPositionsList, xLeftLimit, xRightLimit, alternativeHolderWidth, xDistance); // List filled.