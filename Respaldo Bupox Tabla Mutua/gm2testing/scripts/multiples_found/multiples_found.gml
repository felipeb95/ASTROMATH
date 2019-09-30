/// multiples_found(num);
var num = argument0;


//Ejemplo para calcular divisores
index = 0;
multiples = undefined;
for(i = 2; i <= num; i++){
	verify = true;
	if(num % i == 0){
		for(j = 2; j < i; j++){
			if(i % j == 0){
				verify = false;
				break;
			}
		}
		if(verify){
			multiples[index] = i;
			index++;
		}
	}
}