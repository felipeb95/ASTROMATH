draw_self();
draw_set_font(ballfont);
draw_set_valign(fa_middle)
draw_set_halign(fa_center);
if(!multiBonus)
	draw_text(x,y-textYOffset,string(value));