/// bonusTaken(bonusNumber)
/* 
	DESCRIPTION:
	Checks what type of bonus was taken by checking the subimage that was sorted in the oBonusBox object
	that the oCannon collisioned with. Then, sets the flags for the bonus to activate in oPlayerProperties.

	# # # BONUS LIST # # #
	> subimage 1 : Shows the correct answer for a second.
	> subimage 2 : Gives +100 points
	> subimage 3 : Gives x2 points on next correct answer.
	> subimage 4 : Gives x3 points on next correct answer.
	> subimage 5 : Gives x4 points on next correct answer.
	> subimage 6 : Gives x5 points on next correct answer.
	
*/

var bonusNumber = argument0;

show_debug_message("[SCRIPT] Bonus activation for bonus type ("+string(bonusNumber)+")");

