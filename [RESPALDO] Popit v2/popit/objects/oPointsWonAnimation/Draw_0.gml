draw_set_alpha(alpha);
draw_set_font(fPointsWon);
if(isCorrect){
	draw_set_colour(c_black);
	draw_text_transformed(x+1, y+1, "+"+string(10*multiplierValue), 1, 1,1);
	draw_set_colour(c_white);
	draw_text_transformed(x, y, "+"+string(10*multiplierValue), 1, 1,1);
}else{
	draw_set_colour(c_black);
	draw_text_transformed(x+1, y+1, "-10", 1, 1, 1);
	draw_set_colour(c_white);
	draw_text_transformed(x, y, "-10", 1, 1, 1);
}
draw_set_alpha(1);
draw_set_colour(c_white);