if(room!=rMenu /*and global.kills>0*/){
	killtextscale = max(killtextscale * 0.95,1);
	puntajetextscale = max(puntajetextscale * 0.95,1);
	vidatextscale = max(vidatextscale * 0.95,1);
	DrawSetText(c_black,fMenu,fa_right,fa_top);
	if(!instance_exists(oPDead)) draw_text_transformed(108,12,string(global.vidas) + " VIDAS", vidatextscale,vidatextscale,0);
	//draw_text_transformed(global.width-8,12,string(global.kills) + " MUERTES", killtextscale,killtextscale,0);
	draw_text_transformed(global.width-8,12,string(global.puntaje) + " PUNTOS", puntajetextscale,puntajetextscale,0);
	//draw_text(global.width-8,92,string(global.buenas) + " BUENAS");
	//draw_text(global.width-8,132,string(global.malas) + " MALAS");
	draw_text(global.width-8,52,"ETAPA: "+string(global.etapa));
	if(global.mostrarEjercicio) {
		draw_text((global.width/2)+50,12,"RESUELVE " + string(global.a) + " " + global.operacion + " " + string(global.b));
	}
	else {
		if(global.buena) draw_text((global.width/2)+300,global.height/2,"CORRECTO, AVANZA A LA SIGUIENTE ETAPA");
		else draw_text((global.width/2)+400,global.height/2,"INCORRECTO, LA RESPUESTA ERA "+string(global.r)+", AVANZA A LA SIGUIENTE ETAPA");
	}
	
	draw_set_colour(c_white);
	draw_text_transformed(106,10,string(global.vidas) + " VIDAS", vidatextscale,vidatextscale,0);
	//draw_text_transformed(global.width-10,10,string(global.kills) + " MUERTES", killtextscale,killtextscale,0);
	draw_text_transformed(global.width-10,10,string(global.puntaje) + " PUNTOS", puntajetextscale,puntajetextscale,0);
	//draw_text(global.width-10,90,string(global.buenas) + " BUENAS");
	//draw_text(global.width-10,130,string(global.malas) + " MALAS");
	draw_text(global.width-10,50,"ETAPA: "+string(global.etapa));
	if(global.mostrarEjercicio){
		draw_text((global.width/2)+48,10,"RESUELVE " + string(global.a) + " " + global.operacion + " " + string(global.b));
	}
	else {
		
		if(global.buena) draw_text((global.width/2)+298,(global.height/2)-2,"CORRECTO, AVANZA A LA SIGUIENTE ETAPA");
		else draw_text((global.width/2)+398,(global.height/2)-2,"INCORRECTO, LA RESPUESTA ERA "+string(global.r)+", AVANZA A LA SIGUIENTE ETAPA");
	}
}