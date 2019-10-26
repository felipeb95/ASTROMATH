/// findPrimeNumbers(number1, number2, primeNumbersList, listToFill)

/* 
	DESCRIPTION:
	This script checks which prime numbers stored by the 'SIEVE OF STRATOSTHENES' can actually entirely divide
	the numbers in the actual exersise. These can be used as alternatives for the game.
	
	PARAMETERS:
	number1,number2: The numbers in the actual exersise..
	listToFill: the list in the spawner that will store these useful prime numbers.
	
*/

var number1 = argument0;
var number2 = argument1;
var primeNumbersList = argument2;
var listToFill = argument3;
var i = 0;
var alternativesStr = "";

show_debug_message("Useful Prime Numbers:");
alternativesStr += "[ ";
for(i = 0; i < ds_list_size(primeNumbersList); i++){
	if(number1 mod primeNumbersList[| i] == 0 or number2 mod primeNumbersList[| i] == 0){
		ds_list_add(listToFill, primeNumbersList[| i]);
		alternativesStr += string(primeNumbersList[| i])+" ";
	}
}
alternativesStr += " ]";
show_debug_message("[Script] "+alternativesStr);