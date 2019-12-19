


randomize();
if(global.respondida){
	
	with(oRespuesta) instance_destroy();
	if(global.grupo==0){
		global.origen = "Random";
		global.a = irandom_range(global.minA,global.maxB);	
		global.b = irandom_range(global.minA,global.maxB);	
	}
	if(global.grupo==1){
		var indice = random_range(0,1);
		var memBuenasA = undefined;
		var memMalasA = undefined;
		var memNuevasA = undefined;
		var memBuenasB = undefined;
		var memMalasB = undefined;
		var memNuevasB = undefined;
		var iB = 0;
		var iM = 0;
		var iN = 0;
		for(var i=global.minA;i<=global.maxB;i++){
			for(var j=global.minA;j<=global.maxB;j++){
				if(global.memoria[i,j] == 2){
					memBuenasA[iB] = i;
					memBuenasB[iB] = j;
					iB++;
				}
				if(global.memoria[i,j] == 1){
					memMalasA[iM] = i;
					memMalasB[iM] = j;
					iM++;
				}
				if(global.memoria[i,j] == 0){
					memNuevasA[iN] = i;
					memNuevasB[iN] = j;
					iN++;
				}
			}
		}
		show_debug_message(indice);
		if(indice<global.porcBuenas){ //BUENAS
			if(iB>2){
				global.origen = "Buenas";
				var sel = irandom_range(0,iB-1);
				global.a = memBuenasA[sel];
				global.b = memBuenasB[sel];
			}
			else indice = global.porcBuenas;
		}
		if(indice>(1-global.porcMalas)){ //MALAS
			if(iM>2){
				global.origen = "Malas";
				var sel = irandom_range(0,iM-1);
				global.a = memMalasA[sel];
				global.b = memMalasB[sel];
			}
			else indice = global.porcBuenas;
			
		}
		if(indice>=global.porcBuenas and indice<=(1-global.porcMalas)){ //NUEVAS
			if(iN>0){
				global.origen = "Nuevas";
				var sel = irandom_range(0,iN-1);
				global.a = memNuevasA[sel];
				global.b = memNuevasB[sel];
			}
			else{
				global.a = irandom_range(global.minA,global.maxB);	
				global.b = irandom_range(global.minA,global.maxB);
			}
		}
	}
	global.r = global.a * global.b;
	global.respuestaCorrecta = irandom_range(1,3);
	global.respondida = false;
	global.numEjercicios++;
}
