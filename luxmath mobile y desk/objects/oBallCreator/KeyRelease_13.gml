room_restart();
/*randomize();
// pelota devuelve id, pelota sólo puede ser tipo operacion (!=number)
listIndex = ds_list_find_index(list, testId); //Buscar id en lista completa.
opsIdIndex = ds_list_find_index(operationsId, testId); //Buscar id en lista operaciones.

indexNumOne = numbers[| opsIdIndex]; // Numero al lado izquierdo de bola.
indexNumTwo = numbers[| opsIdIndex+1]; // Numero al lado derecho de bola.

str = string(indexNumOne)+" y "+string(indexNumTwo);
show_debug_message("Numbers at side are "+str);


var pos = testId.path_position; //Guardar posicion de la pelota
instance_destroy(testId); //Destruir instancia con la id tomada.

newBall = instance_create_depth(0,0,-100,oBall);
with(newBall){
	image_index = 0;
	path_position = pos;
	value = irandom_range(1,10);
	show_debug_message("VALUE : "+string(value));
}

ds_list_replace(list, listIndex, newBall); //meter nueva pelota a la lista.
ds_list_replace(numbers, opsIdIndex, newBall.value); // Reemplazar por valor en lista de numeros.
ds_list_delete(numbers, opsIdIndex+1); // Sacar número en indice ops (a su derecha).
ds_list_replace(numbersId, opsIdIndex, newBall); // Reemplazar por id nueva en lista de id para numeros.
ds_list_delete(numbersId, opsIdIndex+1); // Sacar id número que está a su derecha.
ds_list_delete(operations, opsIdIndex); // Sacar símbolo operación de la lista
ds_list_delete(operationsId, opsIdIndex); // Sacar id operación de la lista de id para operaciones.

deletedAtLeft = list[| listIndex-1];
deletedAtRight = list[| listIndex+1];
instance_destroy(deletedAtLeft);
instance_destroy(deletedAtRight);
ds_list_delete(list,ds_list_find_index(list,deletedAtLeft));
ds_list_delete(list,ds_list_find_index(list,deletedAtRight));

show_debug_message("list size: "+string(ds_list_size(list)));
firstBall = list[| 1];
var firstPos = firstBall.path_position;
var sep = 0.01;
var i = 0;


for(i=0;i<ds_list_size(list);i++){
	var ball = ds_list_find_value(list,i);
	with(ball){
		path_position = firstPos + sep*i;
	}
}

show_debug_message("### Numeros ###");
for(i = 0; i < ds_list_size(numbers); i++){
	show_debug_message(string(numbers[| i]));	
}

show_debug_message("### Results ###");
ds_list_clear(results);
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
*/