if(correctAnswerOn and allObjectsOnScreen(oAlternativeHolder, 0)){
	with(oAlternativeHolder){
			if(isCorrect)
				alarm[0] = room_speed*0.1;
	}
	correctAnswerOn = false;
}