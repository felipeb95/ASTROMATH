/// numbersAboveBiggest(lowerBound, upperBound)

/* 
	DESCRIPTION: Return a list of size upperBound - lowerBound with numbers between those bounds.
	
*/

var lowerBound = argument0;
var upperBound = argument1;
var numbersList = ds_list_create();
var i = 0;
for(i = lowerBound; i < upperBound; i++){
		ds_list_add(numbersList, i);
}

return numbersList;