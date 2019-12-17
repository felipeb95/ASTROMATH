if(mode!=TRANS_MODE.OFF){
	draw_set_color(c_black);
	draw_rectangle(0,0,w,percent*h_half,false);
	draw_rectangle(0,h,w,h-(percent*h_half),false);
	
	if(mode==TRANS_MODE.GOTO and percent > 1){
		DrawSetText(c_black,fMenu,fa_right,fa_top);
		draw_text(global.width/2,global.height/2,string(global.vidas) + " VIDAS");
		draw_set_colour(c_white);
		draw_text((global.width/2)-2,(global.height/2)-2,string(global.vidas) + " VIDAS");
	}
	
}
