/// @description Insert description here
// You can write your code in this editor

//number_of_bubbles = 2;
spawner_enabled = true;
ejercicioTerminado = false;
left_number = 30;
right_number = 72;

//Ejemplo para calcular divisores
index_left_div = 0;
index_right_div = 0;
index_total_div = 0;
nums_left = undefined;
nums_right = undefined;
nums_total = undefined;
num_aux = 2;
while(true){
	if(left_number % num_aux == 0){
		nums_left[index_left_div] = num_aux;
		index_left_div++;
	}
	if(right_number % num_aux == 0){
		nums_right[index_right_div] = num_aux;
		index_right_div++;
	}
	if(right_number % num_aux == 0 or left_number % num_aux == 0){
		nums_total[index_total_div] = num_aux;
		index_total_div++;
	}
	num_aux++;
	if(left_number < num_aux and right_number < num_aux){
		break;
	}
}
show_debug_message(nums_left);
show_debug_message(nums_right);
show_debug_message(nums_total);

left_number_red = left_number;
right_number_red = right_number;
selected_number = undefined;
wave_generator_timer = 1.5;
multiples_list = ds_list_create();


for(i=0;i<7;i++){
	ds_list_add(multiples_list,irandom_range(2,50));	
}
alarm[0] = 1;