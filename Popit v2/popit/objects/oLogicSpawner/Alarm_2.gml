randomize();

var multipleOne = oTable._tableDivisors[| 0];
var multipleTwo = oTable._tableDivisors[| 1];
show_debug_message("[MT] Multiplicación entre "+string(multipleOne)+" y "+string(multipleTwo));

var randomRightAnswerSelected = irandom_range(0,numberOfDivisionAlternatives-1); // In which instance the right answer will be is selected randomly.
for(i = 0; i < numberOfTimesAlternatives; i++){
	var xPositionSelected = irandom_range(0,ds_list_size(xPositionsList)-1); // X initial position for the alternative is randomly selected from the list of predefined X's.
	var alternativeHolderInst = instance_create_depth(xPositionsList[| xPositionSelected], -1*sprite_get_height(sAlternativeHolder), -1000, oAlternativeHolder);
	if(i == randomRightAnswerSelected){
		with(alternativeHolderInst){
			numberOnHolder = multipleOne * multipleTwo;
			isCorrect = true;
		}
	}
	else{
		with(alternativeHolderInst){
			numberOnHolder = numbersElection(multipleOne*multipleTwo, 2, multipleOne*multipleTwo + 150);
		}
	}
	ds_list_delete(xPositionsList,xPositionSelected);
}

/* POSSIBLE BONUS APPEARANCE */
var _bonusProbability = random_range(0,1);
var xBonusPositionSelected = irandom_range(0,ds_list_size(xPositionsList)-1);
if(_bonusProbability <= bonusProbability and !instance_exists(oBonus) and !instance_exists(oBonusBox)){
	//show_debug_message("[BONUS CREATION]");
	instance_create_depth(xPositionsList[| xBonusPositionSelected], -1*sprite_get_height(sBonusBase), -999, oBonus);
}

ds_list_clear(xPositionsList); // List cleared for next creation of alternatives.
xPositionsReFill(xPositionsList, xLeftLimit, xRightLimit, alternativeHolderWidth, xDistance); // List filled.