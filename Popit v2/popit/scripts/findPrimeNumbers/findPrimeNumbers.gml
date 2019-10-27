/// findPrimeNumbers(numberOne, numberTwo, listToFill)

/* 
	DESCRIPTION:
	This script find all the prime numbers below the biggest of two numbers.
	When the prime numbers are found, they are stored in a DS List which is the Spawner's prime numbers List for
	the actual exersise. Check out for 'SIEVE OF ERATOSTHENES'.
	
	PARAMETERS:
	numberOne,numberTwo: Numbers of the excersise.
	listToFill: the list in the spawner that will store these prime numbers.
	
*/

var numberOne = argument0;
var numberTwo = argument1;
var listToFill = argument2;
var primeIndex = 2; // Starts with number 2.
var biggestNumber = max(numberOne,numberTwo); // Checks what's the biggest value so it can iterate until reaching that value.
var primeArray = undefined;
var i = 0;
var primeStr = "";

for(i = 0; i < biggestNumber+1; i++){
	primeArray[i] = true;	
}

for(primeIndex = 2; primeIndex*primeIndex <= biggestNumber; primeIndex++){
	if(primeArray[primeIndex]){
		for(i = primeIndex*primeIndex; i <= biggestNumber; i += primeIndex){
			primeArray[i] = false;
		}
	}
}
show_debug_message("Prime Numbers:");
primeStr += "[ ";
for(i = 2; i <= biggestNumber; i++){
	if(primeArray[i]){
		ds_list_add(listToFill,i);
		primeStr += string(i)+" ";
	}
}
primeStr += "]";
show_debug_message("[Script] "+primeStr);