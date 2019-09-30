/// chcek_answer(number_on_bubble, correct_answer);

var number_on_bubble = argument0;
var correct_answer = argument1;
var state = false;


if(number_on_bubble == correct_answer){
	show_debug_message("[CORRECT]");
	state = true;
}

return state;