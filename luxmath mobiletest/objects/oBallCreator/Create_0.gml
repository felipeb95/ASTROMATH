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
var numberOfBalls = 15// multiploe de 3
for(i=0;i<numberOfBalls;i++){
	var thisBall = instance_create_depth(0,0,-100,oBall)
	with(thisBall){
		path_position = 0.002 + i*oBallCreator.ballsep;
		image_index = (i mod 2 == 0) ? 0 : 1;
		if(i mod 2 == 0){
			value = irandom_range(1,10);
			type = "number";
			ds_list_add(oBallCreator.numbers, value);
			ds_list_add(oBallCreator.numbersId, thisBall);
			sprite_index = -1;
		}
		else{
			type = choose("x","+");
			value = type;
			ds_list_add(oBallCreator.operations, type);
			ds_list_add(oBallCreator.operationsId, thisBall);
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
