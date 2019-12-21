show_debug_message("### COLLISION ###");
randomize();
var testId = other;
var ballType = other.type;
var opResult = undefined;
var exploLeftArr = undefined;
var exploRightArr = undefined;
var feedbackMsg = undefined;
var correctAns = false;

/* pelota devuelve id, pelota sólo puede ser tipo operacion (!=number) */
listIndex = ds_list_find_index(oBallCreator.list, testId); //Buscar id en lista completa.
opsIdIndex = ds_list_find_index(oBallCreator.operationsId, testId); //Buscar id en lista operaciones.

leftNumber = oBallCreator.numbers[| opsIdIndex]; // Numero al lado izquierdo de bola.
rightNumber = oBallCreator.numbers[| opsIdIndex+1]; // Numero al lado derecho de bola.

str = string(leftNumber)+" y "+string(rightNumber);
show_debug_message("Numbers at side are "+str);

switch(ballType){
		case "x":
			opResult = leftNumber * rightNumber;
			feedbackMsg = "El resultado de "+string(leftNumber)+" x "+string(rightNumber)+" es "+string(opResult);
		break;
		case "/":
			opResult = leftNumber / rightNumber;
			feedbackMsg = "El resultado de "+string(leftNumber)+" / "+string(rightNumber)+" es "+string(opResult);
		break;
		case "+":
			opResult = leftNumber + rightNumber;
			feedbackMsg = "El resultado de "+string(leftNumber)+" + "+string(rightNumber)+" es "+string(opResult);
		break;
		case "-":
			feedbackMsg = "El resultado de "+string(leftNumber)+" - "+string(rightNumber)+" es "+string(opResult);
			opResult = leftNumber - rightNumber;
		break;
		default: break;
}

if(multiBonus)
	value = opResult;

if(other.canBeShot){
	if(opResult == value){
		show_debug_message("### RIGHT TRY! ###");
		correctAns = true;
		oPlayerInfo.playerScore += 10;
		if(ds_list_size(oBallCreator.list) == 3){
			show_debug_message("### GAME FINISHED ###");
			with(oBall){
				instance_destroy(self);	
			}
			instance_destroy(self);
			room_goto(endRoom);
		}
		else{
			var pos = testId.path_position; //Guardar posicion de la pelota
			instance_destroy(testId); //Destruir instancia con la id tomada.

			newBall = instance_create_depth(0,0,-100,oBall);
			with(newBall){
				type = "number";
				sprite_index = -1;
				path_position = pos;
				value = irandom_range(1,10);
				show_debug_message("VALUE : "+string(value));
			}
			
			/*
			// ################## BEGINNING OF NEW CODE ##################
			if(listIndex-3 >= 0 ){
					exploLeftArr[0] = oBallCreator.list[| listIndex-2]; // Es op
					exploLeftArr[1] = oBallCreator.list[| listIndex-3]; // Es número
			}
			else
				show_debug_message("NO LEFT SIDE");
			//################## END OF NEW CODE ##################
			*/
			
			ds_list_replace(oBallCreator.list, listIndex, newBall); //meter nueva pelota a la lista.
			ds_list_replace(oBallCreator.numbers, opsIdIndex, newBall.value); // Reemplazar por valor en lista de numeros.
			ds_list_delete(oBallCreator.numbers, opsIdIndex+1); // Sacar número en indice ops (a su derecha).
			ds_list_replace(oBallCreator.numbersId, opsIdIndex, newBall); // Reemplazar por id nueva en lista de id para numeros.
			ds_list_delete(oBallCreator.numbersId, opsIdIndex+1); // Sacar id número que está a su derecha.
			ds_list_delete(oBallCreator.operations, opsIdIndex); // Sacar símbolo operación de la lista
			ds_list_delete(oBallCreator.operationsId, opsIdIndex); // Sacar id operación de la lista de id para operaciones.

			/*
			// ################## BEGINNING OF NEW CODE ################## 
			var arrCount = 0;
			for(arrCount = 0; arrCount < array_length_1d(exploLeftArr); arrCount++){
				instance_destroy(exploLeftArr[arrCount]);
				ds_list_delete(oBallCreator.list, ds_list_find_index(oBallCreator.list, exploLeftArr[arrCount]));
				if( arrCount == 0){ // Es op
					ds_list_delete(oBallCreator.operations,ds_list_find_index(oBallCreator.operations,exploLeftArr[arrCount]));
					ds_list_delete(oBallCreator.operationsId,ds_list_find_index(oBallCreator.operationsId,exploLeftArr[arrCount]));
				}
				if (arrCount == 1){ // Es número
					ds_list_delete(oBallCreator.numbers,ds_list_find_index(oBallCreator.numbers,exploLeftArr[arrCount]));
					ds_list_delete(oBallCreator.numbersId,ds_list_find_index(oBallCreator.numbersId,exploLeftArr[arrCount]));
					}
			}
			// ################## END OF NEW CODE ################## 
			*/
			deletedAtLeft = oBallCreator.list[| listIndex-1];
			deletedAtRight = oBallCreator.list[| listIndex+1];
			instance_destroy(deletedAtLeft);
			instance_destroy(deletedAtRight);
			ds_list_delete(oBallCreator.list,ds_list_find_index(oBallCreator.list,deletedAtLeft));
			ds_list_delete(oBallCreator.list,ds_list_find_index(oBallCreator.list,deletedAtRight));

			
			/* MULTI EXPLOSION */
			if(multiBonus){
				instance_create_depth(other.x, other.y,-2000,oBigExplode);
				instance_create_depth(other.x, other.y,-2000,oBigExplode);
				instance_create_depth(other.x, other.y,-2000,oBigExplode);
			}
			else{
			/* SINGLE EXPLOSION */
				instance_create_depth(other.x, other.y,-2000,oExplode);
			}
			
			
			show_debug_message("list size: "+string(ds_list_size(oBallCreator.list)));
			firstBall = oBallCreator.list[| 1];
			var firstPos = firstBall.path_position;
			var i = 0;


			for(i=0;i<ds_list_size(oBallCreator.list);i++){
				var ball = ds_list_find_value(oBallCreator.list,i);
				with(ball){
					path_position = firstPos + oBallCreator.ballsep*i;
				}
			}

			show_debug_message("### Numeros ###");
			for(i = 0; i < ds_list_size(oBallCreator.numbers); i++){
				show_debug_message(string(oBallCreator.numbers[| i]));	
			}

			show_debug_message("### Results ###");
			ds_list_clear(oBallCreator.results);
			for(i = 0; i < ds_list_size(oBallCreator.operations);i++){
				var numOne = oBallCreator.numbers[| i];
				var numTwo = oBallCreator.numbers[| i+1];
				var result = undefined;
				var strR = undefined;
				switch(oBallCreator.operations[| i]){
					case "x":
						result = numOne * numTwo;
					break;
					case "/":
						result = numOne / numTwo;
					break;
					case "+":
						result = numOne + numTwo;
					break;
					case "-":
						result = numOne - numTwo;
					break;
					default: break;
				}
	
				ds_list_add(oBallCreator.results,result);
				strR = string(numOne)+oBallCreator.operations[| i]+string(numTwo)+" = "+string(result);
				show_debug_message(strR);
	
			}
			instance_destroy(self);
			var shootingBall = instance_create_depth(oBallShooter.x,oBallShooter.y-sprite_get_height(sShootingBall)/2,-1252,oShootingBall);
			with(shootingBall){
			var randomPick = irandom_range(0,ds_list_size(oBallCreator.results)-1);
			value = oBallCreator.results[| randomPick];
			}
		}
	}
	else{
		show_debug_message("### WRONG TRY ###");
		oPlayerInfo.playerScore -= 10;
		oPlayerInfo.playerScore = clamp(oPlayerInfo.playerScore,0,99999);
		travel = false;
		x = oBallShooter.x;
		y = initialY+sprite_height/2;	
	}
	feed = instance_create_depth(room_width/2,room_height/2, -10000,oFeedback);
	with(feed){
		if(correctAns)
			text = "CORRECTO \n "+feedbackMsg;
		else
			text = "RECUERDA \n "+feedbackMsg;
	}
}
else{
	show_debug_message("Pass trough, couldnt answer");	
}