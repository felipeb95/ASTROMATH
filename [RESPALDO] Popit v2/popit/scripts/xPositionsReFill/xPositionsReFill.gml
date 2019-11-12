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

//show_debug_message("Width is :"+string(alternativeHolderWidth));
//show_debug_message("Distance is :"+string(distance));

for( i = 0; i < 7; i ++)
	ds_list_add(listToFill, leftLimit + alternativeHolderWidth/2 + (alternativeHolderWidth + distance)*i);
	
xPositionsString = "[ ";
for(i = 0; i < ds_list_size(oLogicSpawner.xPositionsList); i++){
	xPositionsString += string(oLogicSpawner.xPositionsList[| i])+" ";
}
xPositionsString += " ]";
//show_debug_message("[Script] "+xPositionsString);