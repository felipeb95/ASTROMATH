/// allObjectsOnScreen(object, yRequirement)

/* 
	DESCRIPTION: Checks if all objects are visible on screen and inside the boundaries of the view.
*/

var state = true;
var object = argument0;
var yRequirement = argument1;

if(instance_exists(object)){
	with(object){
		if(y < yRequirement){
			state = false;
			break;
		}
	}
}
else
	state = false;


if(state)
	show_debug_message("[SCRIPT] Every object is inside the view");
else
	show_debug_message("[SCRIPT] Not every object is inside the view"); 

return state;