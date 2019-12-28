randomize();
if(device_mouse_check_button_pressed(0,mb_left)){
	// ################################ MOUSE CATCH FOR BONUS ################################
	var bonusInst = instance_position(mouse_x, mouse_y, oBonus)
	if(bonusInst != noone){
		show_debug_message("BONUS TAKEN");
		with(bonusInst){
			switch(image_index){	
				case 0:
					oPlayerInfo.freezeBonus = true;
				break;
	
				case 1:
					oPlayerInfo.slowBonus = true;
				break;
	
				case 2:
					oPlayerInfo.reverseBonus = true;
				break;
	
				case 3:
					oFingerCatch.image_index = 1;
					oFingerCatch.multiBonus = true;
				break;
				case 4:
					oFingerCatch.image_index = 2;
					oFingerCatch.exploBonus = true;
				break;
	
				default:
				break;
	
			}
			
			
			show_debug_message("alarm set from fingercatch step");
			oPlayerInfo.alarm[1] = room_speed*4;
			
			instance_destroy(self);
		}
	}
	else
		show_debug_message("NO BONUS TAKEN");
	
	// ############################## MOUSE CATCH FOR ANSWERING ##############################
	var ballInst = instance_position(mouse_x, mouse_y, oBall);
	if(ballInst != noone and !instance_exists(oFeedback)){
		show_debug_message("CLICK ON BALL");
		with(ballInst){
		show_debug_message("Number on ball: "+string(ballInst.value));
		var testId = ballInst;
		var ballType = ballInst.type;
		var opResult = undefined;
		var exploLeftArr = undefined;
		var exploRightArr = undefined;
		var feedbackMsg = undefined;
		var correctAns = false;

		/* pelota devuelve id, pelota sólo puede ser tipo operacion (!=number) */
		listIndex = ds_list_find_index(oBallCreatorMobile.list, testId); //Buscar id en lista completa.
		opsIdIndex = ds_list_find_index(oBallCreatorMobile.operationsId, testId); //Buscar id en lista operaciones.

		leftNumber = oBallCreatorMobile.numbers[| opsIdIndex]; // Numero al lado izquierdo de bola.
		rightNumber = oBallCreatorMobile.numbers[| opsIdIndex+1]; // Numero al lado derecho de bola.

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

		if(ballInst.canBeShot){
			global.memoria[leftNumber,rightNumber]=2;
			if(opResult == oBallCreatorMobile.resultValue || oFingerCatch.multiBonus){
				show_debug_message("### RIGHT TRY! ###");
				correctAns = true;
				/*
				// MULTI EXPLOSION
				if(multiBonus){
					instance_create_depth(ballInst.x, ballInst.y,-2000,oBigExplode);
					instance_create_depth(ballInst.x, ballInst.y,-2000,oBigExplode);
					instance_create_depth(ballInst.x, ballInst.y,-2000,oBigExplode);
				}
				else{
					SINGLE EXPLOSION
					instance_create_depth(ballInst.x, ballInst.y,-2000,oExplode);
				}
				*/
				instance_create_depth(ballInst.x, ballInst.y,-2000,oBigExplode);
				
				global.playerScore += 10;
				if(ds_list_size(oBallCreatorMobile.list) == 3){
					show_debug_message("### GAME FINISHED ###");
					with(oBall){
						instance_destroy(self);	
					}
					instance_destroy(self);
					
					difficultyAdapter();
					
					if(global.level == global.totalLevels){
						global.playerState = 0;
						room_goto(endRoom);
					}
					else{
						global.playerState = 1;
						global.level++;
						room_goto(transitionRoom);
					}
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
			
					ds_list_replace(oBallCreatorMobile.list, listIndex, newBall); //meter nueva pelota a la lista.
					ds_list_replace(oBallCreatorMobile.numbers, opsIdIndex, newBall.value); // Reemplazar por valor en lista de numeros.
					ds_list_delete(oBallCreatorMobile.numbers, opsIdIndex+1); // Sacar número en indice ops (a su derecha).
					ds_list_replace(oBallCreatorMobile.numbersId, opsIdIndex, newBall); // Reemplazar por id nueva en lista de id para numeros.
					ds_list_delete(oBallCreatorMobile.numbersId, opsIdIndex+1); // Sacar id número que está a su derecha.
					ds_list_delete(oBallCreatorMobile.operations, opsIdIndex); // Sacar símbolo operación de la lista
					ds_list_delete(oBallCreatorMobile.operationsId, opsIdIndex); // Sacar id operación de la lista de id para operaciones.

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
					deletedAtLeft = oBallCreatorMobile.list[| listIndex-1];
					deletedAtRight = oBallCreatorMobile.list[| listIndex+1];
					instance_destroy(deletedAtLeft);
					instance_destroy(deletedAtRight);
					ds_list_delete(oBallCreatorMobile.list,ds_list_find_index(oBallCreatorMobile.list,deletedAtLeft));
					ds_list_delete(oBallCreatorMobile.list,ds_list_find_index(oBallCreatorMobile.list,deletedAtRight));			
			
					show_debug_message("list size: "+string(ds_list_size(oBallCreatorMobile.list)));
					firstBall = oBallCreatorMobile.list[| 1];
					var firstPos = firstBall.path_position;
					var i = 0;


					for(i=0;i<ds_list_size(oBallCreatorMobile.list);i++){
						var ball = ds_list_find_value(oBallCreatorMobile.list,i);
						with(ball){
							path_position = firstPos + oBallCreatorMobile.ballsep*i;
						}
					}

					show_debug_message("### Numeros ###");
					for(i = 0; i < ds_list_size(oBallCreatorMobile.numbers); i++){
						show_debug_message(string(oBallCreatorMobile.numbers[| i]));	
					}

					show_debug_message("### Results ###");
					ds_list_clear(oBallCreatorMobile.results);
					for(i = 0; i < ds_list_size(oBallCreatorMobile.operations);i++){
						var numOne = oBallCreatorMobile.numbers[| i];
						var numTwo = oBallCreatorMobile.numbers[| i+1];
						var result = undefined;
						var strR = undefined;
						switch(oBallCreatorMobile.operations[| i]){
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
	
						ds_list_add(oBallCreatorMobile.results,result);
						strR = string(numOne)+oBallCreatorMobile.operations[| i]+string(numTwo)+" = "+string(result);
						show_debug_message(strR);
	
					}

					var randomPick = irandom_range(0,ds_list_size(oBallCreatorMobile.results)-1);
					oBallCreatorMobile.resultValue = oBallCreatorMobile.results[| randomPick];
					oFingerCatch.multiBonus = false;
					oFingerCatch.exploBonus = false;
				}
			}
			else{
				global.memoria[leftNumber,rightNumber]=1;
				show_debug_message("### WRONG TRY ###");
				global.playerScore -= 10;
				global.playerScore = clamp(global.playerScore,0,99999);
				//travel = false;
				//x = oBallShooter.x;
				//y = initialY+sprite_height/2;	
			}
		}
		else{
			show_debug_message("Pass trough, cant answer");	
		}
			}
			
		feed = instance_create_depth(room_width/2,room_height/2, -10000,oFeedback);
		with(feed){
			if(correctAns)
				text = "CORRECTO \n "+feedbackMsg;
			else
				text = "RECUERDA \n "+feedbackMsg;
		}
	}
	else
		show_debug_message("CLICK NOT ON BALL");
		
}
