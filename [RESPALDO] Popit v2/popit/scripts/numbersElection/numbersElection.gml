/// numbersElection(numberExcluded, minNumber, maxNumber)

/* 
	DESCRIPTION: Chooses a number randomly, but excluding the one given as a parameter.
*/

var numberExcluded = argument0;
var minNumber = argument1;
var maxNumber = argument2;
var numberTwo = irandom_range(minNumber,maxNumber);

while(numberTwo == numberExcluded){
	numberTwo = irandom_range(minNumber,maxNumber);
}

return numberTwo;