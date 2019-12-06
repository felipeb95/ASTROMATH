if(type != "number")
	draw_sprite(sBall,0,x,y);
else
	draw_sprite(sBall,1,x,y);
draw_set_font(ballfont);
draw_set_valign(fa_middle)
draw_set_halign(fa_center);
draw_text(x,y,string(value));