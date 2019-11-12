/// feedbackCreation(isCorrect, operationType, numberOne, numberTwo, primeChosen, doesntApply);

/* 
	# DESCRIPTION: The script checks whether the answer was correct or wrong and then creates a oFeedbackObject
	initialized as if it was correct or wrong and with all its correspondent messages.

	# PARAMETERS:
	> isCorrect : boolean to declare if is Correct or Wrong.
	> operationType : string to check if is a feedback for Prime, Division or Multiplying exercise.
	> numberOne, numberTwo : numbers of the exercise that demands feedback.
	> primeChosen : the prime chosen (if it was a Prime exercise). If is -1, it was an omission.
	> doesntApply : boolean to declare if the result is not integer.
	
*/

var isCorrect = argument0;
var operationType = argument1;
var numberOne = argument2;
var numberTwo = argument3;
var primeChosen = argument4;
var doesntApply = argument5;

var thisFeedback = instance_create_depth(0,0,-1000,oFeedback);

with(thisFeedback){

	id.isCorrect = isCorrect;
	type = operationType;
	
	switch(operationType){
		case "prime":
			if(primeChosen != -1)
				messageDrawn = "Ni "+string(numberOne)+" ni "+string(numberTwo)+" son divisibles en "+string(primeChosen);
			else
				messageDrawn = "¡Debes elegir un número primo!";
			break;
		
		case "division":
			if(doesntApply){
				messageDrawn = string(numberOne)+" no es enteramente dividido en "+string(numberTwo)+"\nNo aplica";
				distanceFromBigMessage += 20;
			}
			else
				messageDrawn = string(numberOne)+" dividido en "+string(numberTwo)+" es "+string(numberOne/numberTwo);
			break;
			
		case "multiplying":
			messageDrawn = string(numberOne)+" por "+string(numberTwo)+" es "+string(numberOne*numberTwo);
			break;
	}
				
}