/// bonusTaken(bonusNumber)
/* 
	DESCRIPTION:
	Checks what type of bonus was taken by checking the subimage that was sorted in the oBonusBox object
	that the oCannon collisioned with. Then, sets the flags for the bonus to activate in oPlayerProperties.

	# # # BONUS LIST # # #
	> subimage 0 : Shows the correct answer for a second.
	> subimage 1 : Gives +100 points
	> subimage 2 : Gives x2 points on next correct answer.
	> subimage 3 : Gives x3 points on next correct answer.
	> subimage 4 : Gives x4 points on next correct answer.
	> subimage 5 : Gives x5 points on next correct answer.
	
*/

var bonusNumber = argument0;

//show_debug_message("[SCRIPT] Bonus activation for bonus type ("+string(bonusNumber)+")");

switch(bonusNumber){
	case 0:
		oPlayerProperties.correctAnswerOn = true;
		with(oAlternativeHolder){
			if(isCorrect)
				alarm[0] = room_speed*0.1;
		}
		break;
	case 1:
		oPlayerProperties.playersScore += 100;
		break;
	case 2:
		oPlayerProperties.multiplierValue = 2;
		break;
	case 3:
		oPlayerProperties.multiplierValue = 3;
		break;
	case 4: 
		oPlayerProperties.multiplierValue = 4;
		break;
	case 5:
		oPlayerProperties.multiplierValue = 5;
}

