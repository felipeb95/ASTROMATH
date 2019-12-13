/// numbersForAlternativeList(answer, upperBound)

/* 
	DESCRIPTION: The script returns a list with all the numbers that a oAlternativeHolder object can take 
	when it's created, excluding the answer of the division and the numbers in the other alternatives. This 
	with a upper bound limit.
	
*/

var answer = argument0;
var upperBound = argument1;
var numbersList = ds_list_create();
var i = 0;
for(i = 1; i < upperBound; i++){
	if(i != answer) 
		ds_list_add(numbersList, i);
}

return numbersList;