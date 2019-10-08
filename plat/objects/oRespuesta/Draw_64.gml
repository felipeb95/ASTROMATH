if(instance_exists(oPlayer) /*and global.kills>0*/){
	DrawSetText(c_black,fMenu,fa_right,fa_top);
	draw_text(x+8,y-12,string(num));
	draw_set_colour(c_white);
	draw_text(x+6,y-14,string(num));
}