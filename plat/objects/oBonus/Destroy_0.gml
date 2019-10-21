randomize();
if(iProbabilidad>=0 and iProbabilidad<global.escudo){
	show_debug_message("ESCUDO");
	global.bonusActivo = 1;
	instance_create_depth(oPlayer.x, oPlayer.y, -16000, oEscudo);
}
if(iProbabilidad>=global.escudo and iProbabilidad<global.poder){
	show_debug_message("PODER");
	global.bonusActivo = 2;
	instance_create_depth(oPlayer.x, oPlayer.y, -16000, oPoder);
}
if(iProbabilidad>=global.poder and iProbabilidad<global.puntos){
	show_debug_message("PUNTOS");
	global.bonusActivo = 3;
	instance_create_depth(x, y, -16000, oPuntos);
}
if(iProbabilidad>=global.puntos and iProbabilidad<global.multiplicador){
	show_debug_message("MULTIPLICADOR");
	//global.bonusActivo = 4;
	instance_create_depth(x, y, -16000, oMultiplicador);
}
if(iProbabilidad>=global.multiplicador and iProbabilidad<=global.slowMo){
	show_debug_message("SLOWMO");
	global.bonusActivo = 5;
	instance_create_depth(oPlayer.x, oPlayer.y, -16000, oSlowMo);
}


with(mywall) instance_destroy();