draw_set_halign(fa_center);
draw_set_alpha(alpha);

if(isCorrect){
	draw_set_font(fFeedbackResult);
	if(feedbackIsVisible){
		draw_set_colour(c_white);
		draw_text(textX,textY + distanceFromBigMessage, "Buen trabajo");
	}

	draw_set_font(fFeedback);
	draw_set_colour(correctAnswerColour);
	draw_text_transformed(textX, textY,  "¡Correcto!", textScale, textScale,1);
}
else{
	draw_set_font(fFeedbackResult);
	if(feedbackIsVisible){
		draw_set_colour(c_white);
		draw_text(textX,textY + distanceFromBigMessage, messageDrawn);
	}

	draw_set_font(fFeedback);
	draw_set_colour(wrongAnswerColour);
	draw_text_transformed(textX, textY,  "¡Cuidado!", textScale, textScale,1);
}
	
	
draw_set_alpha(1);
draw_set_colour(c_white);