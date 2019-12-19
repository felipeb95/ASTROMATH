correctAnswerSubImg = oPlayerProperties.correctAnswerOn ? 1 : 0;
fiftyFiftySubImg = oPlayerProperties.fiftyFiftyOn ? 1 : 0;

if(correctFlashEffect){
	instance_create_depth(room_width/3/2 + sprite_get_width(sCorrectAnswerBonus)/2 , room_height-sprite_get_height(sCorrectAnswerBonus), -1003, oBonusTakenEffect);
	correctFlashEffect = false;
}

if(fiftyFiftyFlashEffectOn){
	instance_create_depth(room_width/3/2 + sprite_get_width(sCorrectAnswerBonus) + sprite_get_width(sFiftyFiftyBonus)/2 , room_height-sprite_get_height(sCorrectAnswerBonus), -1003, oBonusTakenEffect);
	fiftyFiftyFlashEffectOn = false;
}
