/// modules_check(instance_checked, number_on_bubble)

/* This script checks if the number given can divide the left number, the right number or
even both at the same time */

var instance_checked = argument0;
var number_on_bubble = argument1;
var side = instance_checked.side;

if(side == "left" or side == "right"){
	if(instance_checked.number_on_bubble mod number_on_bubble == 0)
		return true;
}

if(side == "middle"){
	if(instance_checked.left_bubble_number mod number_on_bubble == 0 and instance_checked.right_bubble_number mod number_on_bubble == 0)
		return true;
}

return false;