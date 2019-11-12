if(scaleUp){
	textScale += textScaleRate;
	if(textScale >= 1.50){ // Biggest size text can get.
		scaleUp = false
		scaleDown = true
	}
} else if(scaleDown){
	textScale -= textScaleRate;
	if(textScale <= 0.7){ // Lowest Size text can get.
		scaleDown = false;
		secondScaleUp = true;
	}
} else if(secondScaleUp){
	textScale += textScaleRate;
	if(textScale >= 1){ // Text stays fixed at 100% of it's font scale.
		secondScaleUp = false;
		feedbackIsVisible = true;
		alarm[0] = (isCorrect ? room_speed*secondsToFadeIfCorrect : room_speed* secondsToFadeIfWrong);
	}
} else if(alphaDown){
	alpha -= alphaRate;
	if(alpha <= 0){
		alarm[1] = room_speed*0.1;
		alphaDown = false;
	}
}
