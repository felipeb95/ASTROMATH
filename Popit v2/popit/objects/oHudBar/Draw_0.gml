draw_self();
draw_sprite(sHealthPoints, oPlayerProperties.playersHp, hpXOffset , room_height - sprite_height/2);
draw_set_halign(fa_right);
draw_set_font(fPlayerScore);
draw_text(room_width - scoreXOffset, room_height - sprite_height/2, string(oPlayerProperties.playersScore)+" puntos");

draw_sprite(sCorrectAnswerBonus, correctAnswerSubImg, room_width/3/2, room_height - sprite_height/2);
draw_sprite(sFiftyFiftyBonus, fiftyFiftySubImg, room_width/3/2 + sprite_get_width(sCorrectAnswerBonus) + 10, room_height - sprite_height/2);

draw_set_halign(fa_center);
if(oPlayerProperties.multiplierValue != 1)
	draw_text(room_width/2, room_height - sprite_height/2, "En tu proximo acierto ganarás "+string(oPlayerProperties.multiplierValue)+" veces más puntos");

/*
var c1 = c_yellow;
var c2 = c_green;
offset = sprite_get_width(sCorrectAnswerBonus)/2;
draw_rectangle_color(room_width/3/2 - offset, room_height-sprite_height, room_width/3/2 + offset, room_height,c1,c1,c1,c1,false);
draw_rectangle_color(room_width/3/2 + offset+10, room_height-sprite_height, room_width/3/2 + offset+offset*2+10, room_height,c2,c2,c2,c2,false);
*/