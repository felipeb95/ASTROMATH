global.stop = false;
if(global.avanzar=true){
	show_debug_message("porce: "+string(global.porcRespuesta));
	if(global.porcRespuesta<global.porcT){
		if((global.tInicial-global.tAumento)>=global.tMin) global.tInicial -= global.tAumento;
	}
	if(global.porcRespuesta>global.porcT){
		if((global.tInicial+global.tAumento)<=global.tMax) global.tInicial += global.tAumento;
	}
	timer = global.tInicial;
	global.avanzar=false;
	alarm[0] = 60;
}