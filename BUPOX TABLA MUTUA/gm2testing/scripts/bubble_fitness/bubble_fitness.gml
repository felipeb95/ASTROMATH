/// bubble_fitness(divisor)

/* 
	Checks wether the little bubble should be eliminated because it isn't able to divide both numbers
	and return it's module equal to zero.
	
	Behaviour:
		if returns true : should be deleted;
		if returns false : shouldn't be deleted.
*/

var divisor = argument0;
var left_mod = obj_spawner.left_number mod divisor;
var right_mod = obj_spawner.right_number mod divisor;

//show_debug_message("L B: "+string(obj_spawner.left_number)+" | R B: "+string(obj_spawner.right_number));
//show_debug_message("Left number mod divisor: "+string(left_mod)+" | Right number mod divisor: "+string(right_mod));

if(left_mod != 0 and right_mod != 0)
	return true;

return false;