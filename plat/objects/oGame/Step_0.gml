randomize();
if(global.respondida){
	with(oRespuesta) instance_destroy();
	global.a = irandom_range(2,9);	
	global.b = irandom_range(2,9);	
	global.r = global.a * global.b;
	global.respuestaCorrecta = irandom_range(1,3);
	global.respondida = false;
}
