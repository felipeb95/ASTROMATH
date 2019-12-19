if(global.stop==false) timer--;
if(timer>0) alarm[0]=60;

else{
	if(global.timeMuerte==1){
		global.porcRespuesta=global.porcT;
		global.tInicial += global.tAumento;
		with(oPlayer) KillPlayer();
	}
	else{
		if(global.vidas>0)global.vidas--;
		else with(oPlayer) KillPlayer();
	}
}