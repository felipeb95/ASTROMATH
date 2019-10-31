randomize();
alternativeGotHit = false;
subDivisionAnswered = false;
if(divisionCounter == 1)// First division subexersise for the recent prime number selected. Division for numberOne.
	subDivisionNumber = actualNumberOne;
if(divisionCounter == 2)// For second division subexersise
	subDivisionNumber = actualNumberTwo;


	
var randomRightAnswerSelected = irandom_range(0,numberOfDivisionAlternatives-1); // In which instance the right answer will be is selected randomly.
for(i = 0; i < numberOfDivisionAlternatives; i++){
	var xPositionSelected = irandom_range(0,ds_list_size(xPositionsList)-1); // X initial position for the alternative is randomly selected from the list of predefined X's.
	var alternativeHolderInst = instance_create_depth(xPositionsList[| xPositionSelected], -100, -1000, oAlternativeHolder);
	if(i == randomRightAnswerSelected){
		with(alternativeHolderInst){
			if(oLogicSpawner.subDivisionNumber mod oLogicSpawner.numberHit == 0){
				numberOnHolder = oLogicSpawner.subDivisionNumber / oLogicSpawner.numberHit;
				applies = 1;
				oLogicSpawner.actualSubDivisionApplies = 1;
			}
			else{
				numberOnHolder = "no aplica";
				applies = 0;
				oLogicSpawner.actualSubDivisionApplies = 0;
			}
			isCorrect = true;
		}
	}
	else{
		with(alternativeHolderInst){
			numberOnHolder = irandom_range(1,50);	
		}
	}
	ds_list_delete(xPositionsList,xPositionSelected);
}

ds_list_clear(xPositionsList); // List cleared for next creation of alternatives.
xPositionsReFill(xPositionsList, xLeftLimit, xRightLimit, alternativeHolderWidth, xDistance); // List filled.
