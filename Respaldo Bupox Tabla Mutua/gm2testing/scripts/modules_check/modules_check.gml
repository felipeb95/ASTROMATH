/// modules_check(instance_checked, number_on_bubble, left_instance, middle_instance, right_instance)

/* This script checks if the number given can divide the left number, the right number or
even both at the same time */

var instance_checked = argument0;
var number_on_bubble = argument1;
var left_instance = argument2;
var middle_instance = argument3;
var right_instance = argument4;
var side = instance_checked.side;

if(side == "left" or side == "right"){
	/*if(instance_checked.number_on_bubble mod number_on_bubble == 0)
		return true;*/
	
	if(side == "left"){
		if(instance_checked.number_on_bubble mod number_on_bubble == 0){
			if(right_instance.number_on_bubble mod number_on_bubble == 0)
				return false; // The right bubble can also be entirely divided, so it shouldn't count. Student might want to check again.
			else
				return true; // Only left one is entirely divided, so it's ok.
		}
	}
	
	if(side == "right"){
		if(instance_checked.number_on_bubble mod number_on_bubble == 0){
			if(left_instance.number_on_bubble mod number_on_bubble == 0)
				return false; // The right bubble can also be entirely divided, so it shouldn't count. Student might want to check again.
			else
				return true; // Only left one is entirely divided, so it's ok.
		}
	}
}

if(side == "middle"){
	if(instance_checked.left_bubble_number mod number_on_bubble == 0 and instance_checked.right_bubble_number mod number_on_bubble == 0)
		return true;
}

return false;