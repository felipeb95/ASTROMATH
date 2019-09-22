/// @description Insert description here
// You can write your code in this editor

draw_set_font(font_bubble);
draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_self();
if(side == "middle")
	draw_text(x,y,string(left_bubble_number)+" y "+string(right_bubble_number));
else
	draw_text(x,y,string(number_on_bubble));

