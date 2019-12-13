var numberHit = undefined;
var _soundDelaySteps = soundDelaySteps;
var correct = undefined;
var pointsMsgX = undefined;
var pointsMsgY = undefined;
var currentMultiplier = undefined;
var type = undefined;
var gotCorrect = false;
var state = undefined;
var firstA = oLogicSpawner.numberOneHeader;
var firstB = oLogicSpawner.numberTwoHeader;
var a = oLogicSpawner.numberOne;
var b = oLogicSpawner.numberTwo;
var exercise = oLogicSpawner.exercise;
var subexercise = oLogicSpawner.subexercise;

with(other){ // Only specifif instance collisioned.
	numberHit = numberOnHolder;
	pointsMsgX = id.x;
	pointsMsgY = id.y;
}
oLogicSpawner.alternativeGotHit = true;

with(oAlternativeHolder){
	instance_create_depth(id.x, id.y, -1000, oBubblePop);// Creation of bubble pop effect for every bubble on room
}

audio_play_sound(sndBubblePop, 10, false); // Bubble pop sound once.


if(oLogicSpawner.primeType){
	type = "prime";
	if(oLogicSpawner.numberOne mod numberHit == 0 or oLogicSpawner.numberTwo mod numberHit == 0){ // Number on hit can entirely divide at least one of the exersise's numbers.
		oPlayerProperties.playersScore += 10*oPlayerProperties.multiplierValue;
		currentMultiplier = oPlayerProperties.multiplierValue;
		oPlayerProperties.multiplierValue = 1;
		oSoundEffects.alarm[0] = _soundDelaySteps;//audio_play_sound(sndCorrect,10,false);
		show_debug_message("[PT Correct] "+string(numberHit)+" can entirely divide one of the numbers");
		ds_list_add(oTable.tableDivisors, numberHit);
		oLogicSpawner.numberHit = numberHit;
		//oLogicSpawner.divisionType = true;
		feedbackCreation(true, "prime", oLogicSpawner.numberOne, oLogicSpawner.numberTwo, numberHit, false);
		//oLogicSpawner.divisionAlternativesCreation = true;
		//oLogicSpawner.subDivisionAnswered = true;
		oPlayerProperties.playersHp += 1;
		oPlayerProperties.playersHp = clamp(oPlayerProperties.playersHp, 0, 3);
		correct = true;
		gotCorrect = true;
	}
	else{
		oPlayerProperties.playersScore -= 10;
		oPlayerProperties.playersScore = clamp(oPlayerProperties.playersScore, 0, 99999);
		oSoundEffects.alarm[1] = _soundDelaySteps;//audio_play_sound(sndWrong,10,false);
		show_debug_message("[PT Wrong] "+string(numberHit)+" can't entirely divide any of the numbers");
		feedbackCreation(false,"prime", oLogicSpawner.numberOne, oLogicSpawner.numberTwo, numberHit, false);
		//oLogicSpawner.primeAlternativesCreation = true; // Will repeat the question/exersise.
		oPlayerProperties.playersHp -= 1;
		oPlayerProperties.playersHp = clamp(oPlayerProperties.playersHp, 0, 3);
		correct = false;
	}
	
}

if(oLogicSpawner.divisionType){
	type = "division";
	with(other){
		if(isCorrect){
			oPlayerProperties.playersScore += 10*oPlayerProperties.multiplierValue;
			currentMultiplier = oPlayerProperties.multiplierValue;
			oPlayerProperties.multiplierValue = 1;
			oSoundEffects.alarm[0] = _soundDelaySteps;//audio_play_sound(sndCorrect,10,false);
			show_debug_message("[DT Correct]");
			
			if(applies == 0){ // Check if the division doesn't appliy (can't entirely divide)
				if(oLogicSpawner.divisionCounter == 1){
					ds_list_add(oTable.numberOnePartials, oLogicSpawner.subDivisionNumber); // Same number is written down in table as a partial
					feedbackCreation(true,"division",oLogicSpawner.numberOne, numberHit, -1, true);
				}
				if(oLogicSpawner.divisionCounter == 2){
					ds_list_add(oTable.numberTwoPartials, oLogicSpawner.subDivisionNumber); // Same number is written down in table as a partial
					feedbackCreation(true,"division",oLogicSpawner.numberTwo, numberHit, -1, true);
				}
			}
			else{ // It does apply, meaning that it can be entirely divided.
				if(oLogicSpawner.divisionCounter == 1){
					ds_list_add(oTable.numberOnePartials, numberHit); // The number hit, which is the right division, is written down as a partial.
					feedbackCreation(true,"division",oLogicSpawner.numberOne, numberHit, -1, false);
				}
				if(oLogicSpawner.divisionCounter == 2){
					ds_list_add(oTable.numberTwoPartials, numberHit); // The number hit, which is the right division, is written down as a partial.
					feedbackCreation(true,"division",oLogicSpawner.numberTwo, numberHit, -1, false);
				}
			}
			show_debug_message("[SUB DIVISION] It's on number: "+string(oLogicSpawner.divisionCounter));
			/*var localDivCounter = oLogicSpawner.divisionCounter;
			oLogicSpawner.divisionCounter++;
			
			if(oLogicSpawner.divisionCounter <= 2) // Only if the the divisionCounter (number of subdivision exersise) is less equel or less than, the alarm is triggered
				oLogicSpawner.alarm[1] = room_speed*1;
			else{ // Alarm isn't triggered because the 2 division subexersises have been done.
				oLogicSpawner.divisionCounter = 1; // Division subexersise counter reseted.
				oLogicSpawner.divisionAlternativesCreation = false; // No more divsision alternatives are created.
				oLogicSpawner.primeAlternativesCreation = true; // Time to create prime alternatives.
				show_debug_message("[ # # # RESET # # # ]"); // New exersise starts message.
			}*/
			
			oPlayerProperties.playersHp += 1;
			oPlayerProperties.playersHp = clamp(oPlayerProperties.playersHp, 0, 3);
			correct = true;
			gotCorrect = true;
		}
		else{ // Correction if wrong holder is hit.
			oPlayerProperties.playersScore -= 10;
			oPlayerProperties.playersScore = clamp(oPlayerProperties.playersScore, 0, 99999);
			oSoundEffects.alarm[1] = _soundDelaySteps;//audio_play_sound(sndWrong,10,false);
			if(oLogicSpawner.actualSubDivisionApplies == 0){ // Check if the division doesn't appliy (can't entirely divide)
				if(oLogicSpawner.divisionCounter == 1){
					ds_list_add(oTable.numberOnePartials, oLogicSpawner.subDivisionNumber); // Same number is written down in table as a partial
					feedbackCreation(false,"division",oLogicSpawner.numberOne,  oLogicSpawner.numberHit, -1, true);
				}
				if(oLogicSpawner.divisionCounter == 2){
					ds_list_add(oTable.numberTwoPartials, oLogicSpawner.subDivisionNumber); // Same number is written down in table as a partial
					feedbackCreation(false,"division",oLogicSpawner.numberTwo, oLogicSpawner.numberHit, -1, true);
				}
			}
			else{ // It does apply, meaning that it can be entirely divided.
				if(oLogicSpawner.divisionCounter == 1){
					ds_list_add(oTable.numberOnePartials, oLogicSpawner.subDivisionNumber / oLogicSpawner.numberHit); // The number hit, which is the right division, is written down as a partial.
					feedbackCreation(false,"division",oLogicSpawner.numberOne, oLogicSpawner.numberHit, -1, false);
				}
				if(oLogicSpawner.divisionCounter == 2){
					ds_list_add(oTable.numberTwoPartials, oLogicSpawner.subDivisionNumber / oLogicSpawner.numberHit); // The number hit, which is the right division, is written down as a partial.
					feedbackCreation(false,"division",oLogicSpawner.numberTwo, oLogicSpawner.numberHit, -1, false);
				}
			}
			show_debug_message("[SUB DIVISION] It's on number: "+string(oLogicSpawner.divisionCounter));
			/*var localDivCounter = oLogicSpawner.divisionCounter;
			oLogicSpawner.divisionCounter++;
			
			if(oLogicSpawner.divisionCounter <= 2) // Only if the the divisionCounter (number of subdivision exersise) is equal or less than 2, the alarm is triggered
				oLogicSpawner.alarm[1] = room_speed*1;
			else{ // Alarm isn't triggered because the 2 division subexersises have been done.
				oLogicSpawner.divisionCounter = 1; // Division subexersise counter reseted.
				oLogicSpawner.divisionAlternativesCreation = false; // No more divsision alternatives are created.
				oLogicSpawner.primeAlternativesCreation = true; // Time to create prime alternatives.
				show_debug_message("[ # # # RESET # # # ]"); // New exersise starts message.
			}
			show_debug_message("[DT Wrong]");
			*/
			oPlayerProperties.playersHp -= 1;
			oPlayerProperties.playersHp = clamp(oPlayerProperties.playersHp, 0, 3);
			correct = false;
		}
	}
	
	/*if(localDivCounter == 2 and oTable.numberOnePartials[| ds_list_size(oTable.numberOnePartials)-1] == 1 and  oTable.numberTwoPartials[| ds_list_size(oTable.numberTwoPartials)-1] == 1){
			oLogicSpawner.phaseOneFinished = true;
	}*/
}

if(oLogicSpawner.multiplyingType){
	type = "times";
	with(other){
		if(isCorrect){
			oPlayerProperties.playersScore += 10*oPlayerProperties.multiplierValue;
			currentMultiplier = oPlayerProperties.multiplierValue;
			oPlayerProperties.multiplierValue = 1;
			oSoundEffects.alarm[0] = _soundDelaySteps;//audio_play_sound(sndCorrect,7,false);
			feedbackCreation(true, "multiplying", oTable._tableDivisors[| 0], oTable._tableDivisors[| 1], -1, false);
			tableDivisorsReorder(oTable._tableDivisors); // Table reorder.
			show_debug_message("[MT CORRECT]");
			/*if(ds_list_size(oTable._tableDivisors) == 1){ // Only one result. Round finished.
				oTable.alarm[0] = room_speed*1;
			}*/
			correct = true;
			gotCorrect = true;
			oPlayerProperties.playersHp += 1;
			oPlayerProperties.playersHp = clamp(oPlayerProperties.playersHp, 0, 3);
		}
		else{
			oPlayerProperties.playersScore -= 10;
			oPlayerProperties.playersScore = clamp(oPlayerProperties.playersScore, 0, 99999);
			oSoundEffects.alarm[1] = _soundDelaySteps;//audio_play_sound(sndWrong,7,false);
			feedbackCreation(false, "multiplying", oTable._tableDivisors[| 0], oTable._tableDivisors[| 1], -1, false);
			tableDivisorsReorder(oTable._tableDivisors); // Table reoder.
			show_debug_message("[MT WRONG]");
			/*if(ds_list_size(oTable._tableDivisors) == 1){ // Only one result. Round finished.
				oTable.alarm[0] = room_speed*1;
			}*/
			oPlayerProperties.playersHp -= 1;
			oPlayerProperties.playersHp = clamp(oPlayerProperties.playersHp, 0, 3);
			correct = false;
		}
	}
	
	//oLogicSpawner.multiplyAlternativesCreation = true;
}

var pointsMsg = instance_create_depth(pointsMsgX, pointsMsgY, -1001, oPointsWonAnimation);
with(pointsMsg){
	isCorrect = correct ? true : false;
	if(correct)
		multiplierValue = currentMultiplier;
}

state = gotCorrect ? "correct" : "wrong";
if(gotCorrect)
	oPlayerProperties.correctAnswers++;
else
	oPlayerProperties.wrongAnswers++;

saveToMap(firstA, firstB, a, b, type, state, subexercise, exercise, numberHit);

oLogicSpawner.subexercise++;
with(oAlternativeHolder) // Looping through all instances of oAlternativeHolder
	instance_destroy(self); // This will delete the instance of oAlternativeHolder
