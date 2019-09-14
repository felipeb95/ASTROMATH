/// @description Insert description here
// You can write your code in this editor

//number_of_bubbles = 2;
spawner_enabled = true;
ejercicioTerminado = false;
left_number = 300;
right_number = 150;
wave_generator_timer = 1.5;
multiples_list = ds_list_create();
for(i=0;i<7;i++){
	ds_list_add(multiples_list,irandom_range(2,50));	
}
alarm[0] = 1;