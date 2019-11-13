draw_sprite(sHealthPoints, oPlayerProperties.playersHp, hpXOffset , room_height - sprite_height/2);
draw_set_halign(fa_right);
draw_set_font(fPlayerScore);
draw_text(room_width - scoreXOffset, room_height - sprite_height/2, string(oPlayerProperties.playersScore)+" puntos");

draw_sprite(sCorrectAnswerBonus, correctAnswerSubImg, room_width/3/2, room_height - sprite_height/2);

draw_set_halign(fa_center);
if(oPlayerProperties.multiplierValue != 1)
	draw_text(room_width/2, room_height - sprite_height/2, "En tu proximo acierto ganarás "+string(oPlayerProperties.multiplierValue)+" veces más puntos");

