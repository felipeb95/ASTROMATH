if(room!=rMenu and instance_exists(oPlayer) /*and global.kills>0*/){
	killtextscale = max(killtextscale * 0.95,1);
	DrawSetText(c_black,fMenu,fa_right,fa_top);
	draw_text_transformed(RES_W-8,12,string(global.kills) + " MUERTES", killtextscale,killtextscale,0);
	draw_text_transformed(RES_W-8,52,string(global.puntaje) + " PUNTOS", killtextscale,killtextscale,0);
	draw_text_transformed(RES_W-8,92,string(global.buenas) + " BUENAS", killtextscale,killtextscale,0);
	draw_text_transformed(RES_W-8,132,string(global.malas) + " MALAS", killtextscale,killtextscale,0);
	if(global.mostrarEjercicio) draw_text(RES_W/2,12,"RESUELVE " + string(global.a) + " " + global.operacion + " " + string(global.b));
	else draw_text((RES_W/2)+200,RES_H/2,"AVANZA A LA SIGUIENTE ETAPA");
	
	draw_set_colour(c_white);
	draw_text_transformed(RES_W-10,10,string(global.kills) + " MUERTES", killtextscale,killtextscale,0);
	draw_text_transformed(RES_W-10,50,string(global.puntaje) + " PUNTOS", killtextscale,killtextscale,0);
	draw_text_transformed(RES_W-10,90,string(global.buenas) + " BUENAS", killtextscale,killtextscale,0);
	draw_text_transformed(RES_W-10,130,string(global.malas) + " MALAS", killtextscale,killtextscale,0);
	if(global.mostrarEjercicio) draw_text((RES_W/2)-2,10,"RESUELVE " + string(global.a) + " " + global.operacion + " " + string(global.b));
	else draw_text((RES_W/2)+198,(RES_H/2)-2,"AVANZA A LA SIGUIENTE ETAPA");
}