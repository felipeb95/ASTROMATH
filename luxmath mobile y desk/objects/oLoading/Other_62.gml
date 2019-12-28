var jsonReceived = async_load[? "result"]
show_debug_message("[JSON Received]"+jsonReceived);
var map = json_decode(jsonReceived);

if(map = -1){
    show_debug_message("Invalid result");
}

if(ds_exists(map,ds_type_map)){
    show_debug_message("It's a map");
	
	if(ds_map_exists(map, "menorMultiplo")){
	    global.menorMultiplo = real(map[? "menorMultiplo"]);
		parametersStr += "menorMultiplo : "+string(global.menorMultiplo)+" ";
	}
	else{
		parametersLoaded = false; 
		show_debug_message("Problem in menorMultiplo");
	}

	if(ds_map_exists(map, "mayorMultiplo")){
	    global.mayorMultiplo = real(map[? "mayorMultiplo"]);
		parametersStr += "mayorMultiplo : "+string(global.mayorMultiplo)+" ";
	}
	else{
		parametersLoaded = false; 
		show_debug_message("Problem in mayorMultiplo");
	}
	if(ds_map_exists(map, "porcBuenas")){
	    global.porcBuenas = real(map[? "porcBuenas"]);
		parametersStr += "porcBuenas : "+string(global.porcBuenas)+" ";
	}
	else{
		parametersLoaded = false; 
		show_debug_message("Problem in porcBuenas");
	}
	if(ds_map_exists(map, "porcMalas")){
	    global.porcMalas = real(map[? "porcMalas"]);
		parametersStr += "porcMalas : "+string(global.porcMalas)+" ";
	}
	else{
		parametersLoaded = false; 
		show_debug_message("Problem in porcMalas");
	}
	if(ds_map_exists(map, "grupo")){
	    global.grupo = real(map[? "grupo"]);
		parametersStr += "grupo : "+string(global.grupo)+" ";
	}
	else{
		parametersLoaded = false; 
		show_debug_message("Problem in grupo");
	}
	if(ds_map_exists(map, "vRango")){
	    global.rangoBuena = real(map[? "vRango"]);
		parametersStr += "rangoBuena : "+string(global.rangoBuena)+" ";
	}
	else{
		parametersLoaded = false; 
		show_debug_message("Problem in rangoBuena");
	}
	if(ds_map_exists(map, "vMin")){
	    global.minSpeed = real(map[? "vMin"]);
		parametersStr += "minSpeed : "+string(global.minSpeed)+" ";
	}
	else{
		parametersLoaded = false; 
		show_debug_message("Problem in minS");
	}

	if(ds_map_exists(map, "vMax")){
	    global.maxSpeed = real(map[? "vMax"]);
		parametersStr += "maxSpeed : "+string(global.maxSpeed)+" ";
	}
	else{
		parametersLoaded = false; 
		show_debug_message("Problem in maxS");
	}
	
	if(ds_map_exists(map, "acel")){
	    global.ballAceleration = real(map[? "acel	"]);
		parametersStr += "ballAceleration : "+string(global.ballAceleration)+" ";
	}
	else{
		//parametersLoaded = false; 
		show_debug_message("Problem in maxS");
	}

	if(ds_map_exists(map, "cMin")){
	    global.minBalls = real(map[? "cMin"]);
		parametersStr += "minBalls : "+string(global.minBalls)+" ";
	}
	else{
		parametersLoaded = false; 
		show_debug_message("Problem in minBalls");
	}

	if(ds_map_exists(map, "cMax")){
	    global.maxBalls = real(map[? "cMax"]);
		parametersStr += "maxBalls : "+string(global.maxBalls)+" ";
	}
	else{
		parametersLoaded = false; 
		show_debug_message("Problem in maxBalls");
	}

	if(ds_map_exists(map, "bonusprob")){
	    global.bonusProbability = real(map[? "bonusprob"]);
		parametersStr += "bonusProbability : "+string(global.bonusProbability)+" ";
	}
	else{
		parametersLoaded = false; 
		show_debug_message("Problem in bProb");
	}

	if(ds_map_exists(map, "freeze")){
	    global.bonusFreeze = real(map[? "freeze"]);
		parametersStr += "bonusFreeze : "+string(global.bonusFreeze)+" ";
	}
	else{
		parametersLoaded = false; 
		show_debug_message("Problem in bonusFreeze");
	}

	if(ds_map_exists(map, "slowmo")){
	    global.bonusSlow = real(map[? "slowmo"]);
		parametersStr += "bonusSlow : "+string(global.bonusSlow)+" ";
	}
	else{
		parametersLoaded = false; 
		show_debug_message("Problem in bonusSlow");
	}

	if(ds_map_exists(map, "reversa")){
	    global.bonusReverse = real(map[? "reversa"]);
		parametersStr += "bonusReverse : "+string(global.bonusReverse)+" ";
	}
	else{
		parametersLoaded = false; 
		show_debug_message("Problem in bonusReverse");
	}

	if(ds_map_exists(map, "correcta")){
	    global.bonusMultiBall = real(map[? "correcta"]);
		parametersStr += "bonusMultiBall : "+string(global.bonusMultiBall)+" ";
	}
	else{
		parametersLoaded = false; 
		show_debug_message("Problem in bonusMultiBall");
	}

	if(ds_map_exists(map, "debug")){
	    global.debugMode = real(map[? "debug"]) == 1 ? true : false;
	}
	else{
		parametersLoaded = false; 
		show_debug_message("Problem in debug");
	}
	
	if(ds_map_exists(map, "cErrores")){
	    global.wrongCap = real(map[? "cErrores"]);
		parametersStr += "wrongCap : "+string(global.wrongCap)+" ";
	}
	else{
		parametersLoaded = false; 
		show_debug_message("Problem in wrongCap");
	}
	
	if(ds_map_exists(map, "cPelotas")){
	    global.balls = real(map[? "cPelotas"]);
		parametersStr += "wrongCap : "+string(global.balls)+" ";
	}
	else{
		parametersLoaded = false; 
		show_debug_message("Problem in cPelotas");
	}
	
	if(ds_map_exists(map, "vInicial")){
	    global.currentSpeed = real(map[? "vInicial"]);
		parametersStr += "wrongCap : "+string(global.currentSpeed)+" ";
	}
	else{
		parametersLoaded = false; 
		show_debug_message("Problem in vInicial");
	}
	
	parametersLoaded = is_undefined(parametersLoaded) ? true : false;
	
	if(parametersLoaded)
		show_debug_message("[SUCCESFUL PARAMETERS READING]");
	else
		show_debug_message("[ERROR IN PARAMETERS READING]");
    
}
else
	show_debug_message("No map found");
	
if(global.grupo==1){
	for(var i=global.menorMultiplo;i<=global.mayorMultiplo;i++){
		for(var j=global.menorMultiplo;j<=global.mayorMultiplo;j++){
			global.memoria[i,j] = 0;
		}
	}
}


