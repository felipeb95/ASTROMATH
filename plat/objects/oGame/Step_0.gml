randomize();
if(global.respondida){
	with(oRespuesta) instance_destroy();
	global.a = irandom_range(global.minA,global.maxB);	
	global.b = irandom_range(global.minA,global.maxB);	
	global.r = global.a * global.b;
	global.respuestaCorrecta = irandom_range(1,3);
	global.respondida = false;
	global.numEjercicios++;
}
