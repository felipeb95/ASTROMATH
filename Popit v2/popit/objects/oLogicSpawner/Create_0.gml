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
wrongAlternativesList = ds_list_create(); // Prime alternatives below the biggest number, but not useful or handy.
xPositionsList = ds_list_create(); // Filled below.
numberOfDivisionAlternatives = 5;
actualSubDivisionApplies = -1;
exersiseJustCreated = true; // This only changes to true when multiplying phase is done, so a new pair of numbers can be selected.
alternativeGotHit = false; // This checks wether the player omitted or couldn't hit any alternative.
maxNumberForHolder = 50;
numberOfTimesAlternatives = 5;
numberOfPrimeAlternatives = 5;
multipleOne = undefined;
multipleTwo = undefined;
timeForNextCreation = room_speed*0.2; // ith part of a second.
subexercise = 1;
exercise = 0;

/* GLOBALS (or parameters loaded by http as example) */
minNumber = global.minNumber;
maxNumber = global.maxNumber;
bonusProbability = global.bonusProbability;

if(global.grupo==1){
	global.memoria = undefined;
	for(var i=minNumber;i<=maxNumber;i++){
		for(var j=minNumber;j<=maxNumber;j++){
			global.memoria[i,j]=0;
		}
	}
}

rangoBuena = 0.5; // Debería ser global.rangoBuena.
global.wrongCounter = 0;
global.wrongCap = undefined;

/* FLAGS */
subDivisionAnswered = false;
primeAnswered = false;
primeType = true;
primeAlternativesCreation = true; // Triggers Alarm 0.
divisionType = false;
divisionAlternativesCreation = false; // Triggers Alarm 1.
multiplyingType = false;
multiplyAlternativesCreation = false; // Triggers Alarm 2;
phaseOneFinished = false;
multiplierJustCreated = true;

/* POSITIONS & SIZES */
xLeftLimit = room_width/3;
xRightLimit = room_width;
alternativeHolderWidth = sprite_get_width(sAlternativeHolder);
xDistance = 25; // 25px minimun margin to fit 7 100x100 sprites without collapsing.
xPositionsReFill(xPositionsList, xLeftLimit, xRightLimit, alternativeHolderWidth, xDistance);

/* UI CREATION BY OS TYPE */
show_debug_message("OS TYPE: "+string(global.Config));
if(global.Config == 1 || global.Config == 4)
	instance_create_depth(0,0,-10000,oMobileUI);