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

	if(ds_map_exists(map, "bonusProbability")){
	    global.bonusProbability = real(map[? "bonusProbability"]);
		parametersStr += "bonusProbability : "+string(global.bonusProbability)+" ";
	}
	else{
		parametersLoaded = false; 
		show_debug_message("Problem in bProb");
	}

	if(ds_map_exists(map, "bonusPlus")){
	    global.bonusPlus100 = real(map[? "bonusPlus"]);
		parametersStr += "bonusPlus : "+string(global.bonusPlus100)+" ";
	}
	else{
		parametersLoaded = false; 
		show_debug_message("Problem in bPlus");
	}

	if(ds_map_exists(map, "bonusMultiplier")){
	    global.bonusMultiplier = real(map[? "bonusMultiplier"]);
		parametersStr += "bonusMultiplier : "+string(global.bonusPlus100)+" ";
	}
	else{
		parametersLoaded = false; 
		show_debug_message("Problem in bMult");
	}

	if(ds_map_exists(map, "bonusFiftyFifty")){
	    global.bonusFiftyFifty = real(map[? "bonusFiftyFifty"]);
		parametersStr += "bonusFiftyFifty : "+string(global.bonusFiftyFifty)+" ";
	}
	else{
		parametersLoaded = false; 
		show_debug_message("Problem in b5050");
	}

	if(ds_map_exists(map, "bonusShowCorrect")){
	    global.bonusShowCorrect = real(map[? "bonusShowCorrect"]);
		parametersStr += "bonusShowCorrect : "+string(global.bonusShowCorrect)+" ";
	}
	else{
		parametersLoaded = false; 
		show_debug_message("Problem in bShow");
	}

	if(ds_map_exists(map, "debugMode")){
	    global.debugMode = real(map[? "debugMode"]) == 1 ? true : false;
		parametersStr += "debugMode : "+string(global.debugMode)+" ";
	}
	else{
		parametersLoaded = false; 
		show_debug_message("Problem in debug");
	}
	
	if(ds_map_exists(map, "rangoBuena")){
	    global.rangoBuena = real(map[? "rangoBuena"]);
		parametersStr += "rangoBuena : "+string(global.rangoBuena)+" ";
	}
	else{
		parametersLoaded = false; 
		show_debug_message("Problem in rangoBuena");
	}
	
	parametersLoaded = is_undefined(parametersLoaded) ? true : false;
	
	if(parametersLoaded)
		show_debug_message("[SUCCESFUL PARAMETERS READING]");
	else
		show_debug_message("[ERROR IN PARAMETERS READING]");
    
}
else
	show_debug_message("No map found");



