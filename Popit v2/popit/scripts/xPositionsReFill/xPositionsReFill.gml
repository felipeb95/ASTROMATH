/// xPositionsReFill(listToFill, leftLimit, rightLimit, alternativeHolderWidth, distance)

/*	
	The spawners list with the x values for alternative creationd and positioning is refilled in the create
	event of the spawners and when the creation of alternativeHolders is done. The list in the spawner needs
	to be cleared in order to be refilled. 
*/
	
var listToFill = argument0;
var leftLimit = argument1;
var rightLimit = argument2;
var alternativeHolderWidth = argument3;
var distance = argument4;
var i = 0;

for( i = 0; i < 6; i ++)
	ds_list_add(listToFill, leftLimit + alternativeHolderWidth/2 + (alternativeHolderWidth + distance)*i);