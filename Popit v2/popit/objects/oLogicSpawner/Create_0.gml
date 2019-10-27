/* VARIABLES */
numberOne = 14;
numberOneHeader = numberOne;
numberTwo = 15;
numberTwoHeader = numberTwo;
/* Following 4 lines should be updated when a new exersise is selected */
primeNumbersFound = ds_list_create(); // All primer numbers lower or equal to the biggest of the exersise's numbers.
findPrimeNumbers(numberOne, numberTwo, primeNumbersFound); 
alternativesList = ds_list_create(); // The alternatives that will be displayed in the bubbles. They are all handy.
findUsefulPrimeNumbers(numberOne, numberTwo, primeNumbersFound, alternativesList);
xPositionsList = ds_list_create(); // Filled below.

/* FLAGS */
primeType = true;
primeAlternativesCreation = true; // Triggers Alarm 0.
divisionType = false;
divisionAlternativesCreation = false; // Triggers Alarm 1.

/* POSITIONS & SIZES */
xLeftLimit = room_width/3;
xRightLimit = room_width;
alternativeHolderWidth = sprite_get_width(sAlternativeHolder);
xDistance = alternativeHolderWidth + 30; // 30px minimun margin.
xPositionsReFill(xPositionsList, xLeftLimit, xRightLimit, alternativeHolderWidth, xDistance);


