var jsonReceived = async_load[? "result"]
show_debug_message("[JSON Received]"+jsonReceived);
var map = json_decode(jsonReceived);

if(map = -1){
    show_debug_message("Invalid result");
}

if(ds_exists(map,ds_type_map)){
    show_debug_message("It's a map");
	
	if(ds_map_exists(map, "minNumber")){
	    global.minNumber = real(map[? "minNumber"]);
		parametersStr += "minNumber : "+string(global.minNumber)+" ";
	}
	else{
		parametersLoaded = false; 
		show_debug_message("Problem in minN");
	}

	if(ds_map_exists(map, "maxNumber")){
	    global.maxNumber = real(map[? "maxNumber"]);
		parametersStr += "maxNumber : "+string(global.maxNumber)+" ";
	}
	else{
		parametersLoaded = false; 
		show_debug_message("Problem in maxN");
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
	if(ds_map_exists(map, "rangoBuena")){
	    global.rangoBuena = real(map[? "rangoBuena"]);
		parametersStr += "rangoBuena : "+string(global.rangoBuena)+" ";
	}
	else{
		parametersLoaded = false; 
		show_debug_message("Problem in rangoBuena");
	}
	if(ds_map_exists(map, "minSpeed")){
	    global.minSpeed = real(map[? "minSpeed"]);
		parametersStr += "minSpeed : "+string(global.minSpeed)+" ";
	}
	else{
		parametersLoaded = false; 
		show_debug_message("Problem in minS");
	}

	if(ds_map_exists(map, "maxSpeed")){
	    global.maxSpeed = real(map[? "maxSpeed"]);
		parametersStr += "maxSpeed : "+string(global.maxSpeed)+" ";
	}
	else{
		parametersLoaded = false; 
		show_debug_message("Problem in maxS");
	}
	
	if(ds_map_exists(map, "ballAceleration")){
	    global.ballAceleration = real(map[? "ballAceleration"]);
		parametersStr += "ballAceleration : "+string(global.ballAceleration)+" ";
	}
	else{
		parametersLoaded = false; 
		show_debug_message("Problem in maxS");
	}

	if(ds_map_exists(map, "minBalls")){
	    global.minBalls = real(map[? "minBalls"]);
		parametersStr += "minBalls : "+string(global.minBalls)+" ";
	}
	else{
		parametersLoaded = false; 
		show_debug_message("Problem in minBalls");
	}

	if(ds_map_exists(map, "maxBalls")){
	    global.maxBalls = real(map[? "maxBalls"]);
		parametersStr += "maxBalls : "+string(global.maxBalls)+" ";
	}
	else{
		parametersLoaded = false; 
		show_debug_message("Problem in maxBalls");
	}

	if(ds_map_exists(map, "bonusProbability")){
	    global.bonusProbability = real(map[? "bonusProbability"]);
		parametersStr += "bonusProbability : "+string(global.bonusProbability)+" ";
	}
	else{
		parametersLoaded = false; 
		show_debug_message("Problem in bProb");
	}

	if(ds_map_exists(map, "bonusFreeze")){
	    global.bonusFreeze = real(map[? "bonusFreeze"]);
		parametersStr += "bonusFreeze : "+string(global.bonusFreeze)+" ";
	}
	else{
		parametersLoaded = false; 
		show_debug_message("Problem in bonusFreeze");
	}

	if(ds_map_exists(map, "bonusSlow")){
	    global.bonusSlow = real(map[? "bonusSlow"]);
		parametersStr += "bonusSlow : "+string(global.bonusSlow)+" ";
	}
	else{
		parametersLoaded = false; 
		show_debug_message("Problem in bonusSlow");
	}

	if(ds_map_exists(map, "bonusReverse")){
	    global.bonusReverse = real(map[? "bonusReverse"]);
		parametersStr += "bonusReverse : "+string(global.bonusReverse)+" ";
	}
	else{
		parametersLoaded = false; 
		show_debug_message("Problem in bonusReverse");
	}

	if(ds_map_exists(map, "bonusMultiBall")){
	    global.bonusMultiBall = real(map[? "bonusMultiBall"]);
		parametersStr += "bonusMultiBall : "+string(global.bonusMultiBall)+" ";
	}
	else{
		parametersLoaded = false; 
		show_debug_message("Problem in bonusMultiBall");
	}

	if(ds_map_exists(map, "debugMode")){
	    global.debugMode = real(map[? "debugMode"]) == 1 ? true : false;
	}
	else{
		parametersLoaded = false; 
		show_debug_message("Problem in debug");
	}
	
	if(ds_map_exists(map, "nToDifficultyChange")){
	    global.nToDifficultyChange = real(map[? "nToDifficultyChange"]);
		parametersStr += "nToDifficultyChange : "+string(global.nToDifficultyChange)+" ";
	}
	else{
		parametersLoaded = false; 
		show_debug_message("Problem in nToDifficultyChange");
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


