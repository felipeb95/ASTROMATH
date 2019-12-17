draw_self();
if(instance_exists(oPlayer) /*and global.kills>0*/){
	DrawSetText(c_black,fMenu,fa_right,fa_top);
	draw_text(x+5,y-10,string(num));
	draw_set_colour(c_white);
	draw_text(x+3,y-12,string(num));
}