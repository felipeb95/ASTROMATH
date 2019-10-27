/* VARIABLES */
numberOne = 14;
numberTwo = 15;
primeNumbersFound = ds_list_create(); // All primer numbers lower or equal to the biggest of the exersise's numbers.
alternativesList = ds_list_create(); // The alternatives that will be displayed in the bubbles. They are all handy.
xPositionsList = ds_list_create(); // Filled below.

/* FLAGS */
primeAlternativesCreation = true; // Triggers Alarm 0.
divisionAlternativesCreation = false; // Triggers Alarm 1.

/* POSITIONS AND SIZES */
xLeftLimit = room_width/3;
xRightLimit = room_width;
alternativeHolderWidth = sprite_get_width(sAlternativeHolder);
xDistance = alternativeHolderWidth + 30; // 30px minimun margin.
xPositionsReFill(xPositionsList, xLeftLimit, xRightLimit, alternativeHolderWidth, xDistance);


