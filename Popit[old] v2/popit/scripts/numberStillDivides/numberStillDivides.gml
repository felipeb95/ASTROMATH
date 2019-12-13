/// bubble_fitness(divisor)

/* 
	Checks wether the little bubble should be eliminated because it isn't able to divide both numbers
	and return it's module equal to zero.
	
	Behaviour:
		if returns true : should be deleted;
		if returns false : shouldn't be deleted.
*/

var divisor = argument0;
var numberOneMmod = oLogicSpawner.numberOne mod divisor;
var numberTwoMmod = oLogicSpawner.numberTwo mod divisor;

if(numberOneMmod != 0 and numberTwoMmod != 0)
	return true;

return false;