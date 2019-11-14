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

	if(ds_map_exists(map, "maxNumber")){
	    global.maxNumber = real(map[? "maxNumber"]);
		parametersStr += "maxNumber : "+string(global.maxNumber)+" ";
	}

	if(ds_map_exists(map, "minSpeed")){
	    global.minSpeed = real(map[? "minSpeed"]);
		parametersStr += "minSpeed : "+string(global.minSpeed)+" ";
	}

	if(ds_map_exists(map, "maxSpeed")){
	    global.maxSpeed = real(map[? "maxSpeed"]);
		parametersStr += "maxSpeed : "+string(global.maxSpeed)+" ";
	}

	if(ds_map_exists(map, "bonusProbability")){
	    global.bonusProbability = map[? "bonusProbability"];
		parametersStr += "bonusProbability : "+string(global.bonusProbability)+" ";
	}

	if(ds_map_exists(map, "bonusPlus100")){
	    global.bonusPlus100 = map[? "bonusPlus100"];
		parametersStr += "bonusPlus100 : "+string(global.bonusPlus100)+" ";
	}

	if(ds_map_exists(map, "bonusMultiplier")){
	    global.bonusMultiplier = map[? "bonusMultiplier"];
		parametersStr += "bonusMultiplier : "+string(global.bonusPlus100)+" ";
	}

	if(ds_map_exists(map, "bonusFiftyFifty")){
	    global.bonusFiftyFifty = map[? "bonusFiftyFifty"];
		parametersStr += "bonusFiftyFifty : "+string(global.bonusFiftyFifty)+" ";
	}

	if(ds_map_exists(map, "bonusShowCorrect")){
	    global.bonusShowCorrect = map[? "bonusShowCorrect"];
		parametersStr += "bonusShowCorrect : "+string(global.bonusShowCorrect)+" ";
	}

	if(ds_map_exists(map, "debugMode")){
	    global.debugMode = real(map[? "debugMode"]) == 1 ? true : false;
	}


	parametersLoaded = true;
    
}
else
	show_debug_message("No map found");



