/* VARIABLES */
numberOne = undefined;
numberOneHeader = undefined;
actualNumberOne = undefined;
numberTwo = undefined;
actualNumberTwo = undefined;
numberTwoHeader = undefined;
numberHit = undefined;
divisionCounter = 1; // It goes up to 2 and then resets.
subDivisionNumber = undefined; // Actual number being divided in the sub exersise.
primeNumbersFound = ds_list_create(); // All primer numbers lower or equal to the biggest of the exersise's numbers.
alternativesList = ds_list_create(); // The alternatives that will be displayed in the bubbles. They are all handy.
xPositionsList = ds_list_create(); // Filled below.
numberOfDivisionAlternatives = 5;
actualSubDivisionApplies = -1;

/* GLOBALS */


/* FLAGS */
subDivisionAnswered = false;
primeAnswered = false;
primeType = true;
primeAlternativesCreation = true; // Triggers Alarm 0.
divisionType = false;
divisionAlternativesCreation = false; // Triggers Alarm 1.
multiplyAlternativesCreation = false; // Triggers Alarm 2;

/* POSITIONS & SIZES */
xLeftLimit = room_width/3;
xRightLimit = room_width;
alternativeHolderWidth = sprite_get_width(sAlternativeHolder);
xDistance = alternativeHolderWidth + 30; // 30px minimun margin.
xPositionsReFill(xPositionsList, xLeftLimit, xRightLimit, alternativeHolderWidth, xDistance);


