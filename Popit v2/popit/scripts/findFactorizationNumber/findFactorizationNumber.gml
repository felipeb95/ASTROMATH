/// findFactorizationNumber(number, usefulPrimeList)

/* 
	DESCRIPTION:
	This script calculates how many times a number can be divided entirely until it gets to its full factorization
	at 1.
	
	PARAMETERS:
	number : number being factorised.
	usefulPrimeList : list of numbers that are being used in game and are known to entirely divide the number.
	
*/

var number = argument0;
var usefulPrimeList = argument1;
var listIndex = 0;
var divideCounter = 0;

while(number != 1){

	if(number % usefulPrimeList[| listIndex] == 0){
		number = number / usefulPrimeList[| listIndex];
		divideCounter++;
	}
	else{
		listIndex++;	
	}
}

show_debug_message(" # # # # # # TOTAL DIVISIONS "+string(divideCounter));
