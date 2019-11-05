/// tableDivisorsReorder(target_list)
/* 
	DESCRIPTION: This script creates a temporary list that shortens the one in obj_multiples_list by taking the first
	two elements, multiply them and then copy that result into the first position of the new list. The rest of the list
	is copied so the result is a new list with an element less 
*/


var target_list = argument0;
var new_element = target_list[| 0] * target_list[| 1];
var target_list_size = ds_list_size(target_list);

ds_list_delete(target_list, 0);
ds_list_replace(target_list, 0 , new_element);


