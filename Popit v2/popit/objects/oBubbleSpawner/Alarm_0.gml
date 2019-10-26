/* Storing of prime numbers and alternatives in spawner's lists */

primeNumbersString = "[ ";
alternativesString = "[ ";

findPrimeNumbers(number1, number2, primeNumbersFound);
for(i = 0; i < ds_list_size(primeNumbersFound); i++){
	primeNumbersString += string(primeNumbersFound[| i])+" ";
}

findUsefulPrimeNumbers(number1, number2, primeNumbersFound, alternativesList);
for(i = 0; i < ds_list_size(alternativesList); i++){
	alternativesString += string(alternativesList[| i])+" ";
}

primeNumbersString += " ]";
alternativesString += " ]";

show_debug_message(primeNumbersString);
show_debug_message(alternativesString);

/* Creation of bubbles */
