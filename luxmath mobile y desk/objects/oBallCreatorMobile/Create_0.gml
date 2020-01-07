randomize();
list = ds_list_create();
numbers = ds_list_create();
numbersId = ds_list_create();
operations = ds_list_create();
operationsId = ds_list_create();
results = ds_list_create();

var i =0;
ballsep = 0.015;
//testId = undefined;
var siguientePar = false;
var historyA = undefined;
var sizeH = 0; 
var historyB = undefined;
for(var p=0;p<global.balls;p++){
	var thisBall = instance_create_depth(0,0,-100,oBall)
	with(thisBall){
		path_position = 0.002 + p*oBallCreatorMobile.ballsep;
		image_index = (p mod 2 == 0) ? 0 : 1;
		if(p mod 2 == 0){
			if(global.grupo==1){
				if(!siguientePar){ //A
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
					for(var i=global.menorMultiplo;i<=global.mayorMultiplo;i++){
						for(var j=global.menorMultiplo;j<=global.mayorMultiplo;j++){
							var aux = false;
							if(sizeH>0){
								for(var k=0;k<sizeH;k++){
									if(historyA[k]==i and historyB[k]==j) aux=true;
								}
								if(!aux){
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
							else{
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
							global.a = irandom_range(global.menorMultiplo,global.mayorMultiplo);	
							global.b = irandom_range(global.menorMultiplo,global.mayorMultiplo);
						}
					}
					historyA[sizeH]=global.a;
					historyB[sizeH]=global.b;
					sizeH++;
					show_debug_message(global.origen);
					
					
					
					
					
					
					
					
					
					value = global.a;
					siguientePar=true;
				}
				else{ //B
					value = global.b;
					siguientePar=false;
				}
				
			}
			else{
				global.origen = "Random";
				if(!siguientePar){ //A
					value = irandom_range(global.menorMultiplo,global.mayorMultiplo);
					siguientePar=true;
				}
				else{ //B
					value = irandom_range(global.menorMultiplo,global.mayorMultiplo);
					siguientePar=false;
				}
			}
			type = "number";
			ds_list_add(oBallCreator.numbers, value);
			ds_list_add(oBallCreator.numbersId, thisBall);
			sprite_index = -1;
		}
		else{
			type = "x";//choose("x","+");
			value = type;
			ds_list_add(oBallCreatorMobile.operations, type);
			ds_list_add(oBallCreatorMobile.operationsId, thisBall);
		}
	}
	//if(i==3)
		//testId = thisBall;
	ds_list_add(list,thisBall);
}

show_debug_message("### Numeros ###");
for(i = 0; i < ds_list_size(numbers); i++){
	show_debug_message(string(numbers[| i]));	
}

show_debug_message("### Results ###");
for(i = 0; i < ds_list_size(operations);i++){
	var numOne = numbers[| i];
	var numTwo = numbers[| i+1];
	var result = undefined;
	var strR = undefined;
	switch(operations[| i]){
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
	
	ds_list_add(results,result);
	strR = string(numOne)+operations[| i]+string(numTwo)+" = "+string(result);
	show_debug_message(strR);
}

/*
var shootingBall = instance_create_depth(oBallShooter.x,oBallShooter.y,-1252,oShootingBall);
with(shootingBall){
	var randomPick = irandom_range(0,ds_list_size(oBallCreator.results)-1);
	value = oBallCreator.results[| randomPick];
}
*/


var randomPick = irandom_range(0,ds_list_size(results)-1);
resultValue = results[| randomPick];
