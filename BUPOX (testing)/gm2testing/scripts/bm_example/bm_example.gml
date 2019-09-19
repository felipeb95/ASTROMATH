/// bm_example(divisor)

/* 
	Checks wether the little bubble should be eliminated because it isn't able to divide both numbers
	and return it's module equal to zero.
	
	Behaviour:
		if returns true : should be deleted;
		if returns false : shouldn't be deleted.
*/

divisor = argument0;
show_debug_message("Divisor es : "+string(divisor));
left_mod = 72 mod 3;
show_debug_message("(72/3) Left number mod divisor: "+string(left_mod));
left_mod = 14 mod 3;
show_debug_message("(14/3) Left number mod divisor: "+string(left_mod));
left_mod = 3 mod 3;
show_debug_message("(3/3) Left number mod divisor: "+string(left_mod));
