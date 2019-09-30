/// numbers_reduced()

/* This script checks wether both numbers have been reduced to 1 or not.
In case they have, then the spawner flag to move to next phase is set to true.
Next phase is the times part of the excercise, where multiples or both bubbles
are mutiplied to get the MCM */

if(obj_spawner.left_number == 1 and obj_spawner.right_number == 1)
	obj_spawner.phaseOneDone = true;


