var arr = argument0;
var indice = argument1;
var k = 0;
for (var i = 0; i < array_length_1d(arr); i++) { 
    if (i == indice) { 
        continue; 
    } 
    arr_nuevo[k] = arr[i];
	k++;
} 

return arr_nuevo