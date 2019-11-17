/// random_pick(list,list_cat)
randomize();
var list = argument0;
var list_category = argument1;

show_debug_message("LISTA EN RANDOM_PICK");
//show_list(list);

randompick = irandom_range(0, (ds_list_size(list))-1);
if(list_category == "buenas"){
    while(ds_map_find_value(list[| randompick],"correcta") == global.last_correct && ds_list_size(list)>1){
        show_debug_message("Se repitió el último bueno");
        randompick = irandom_range(0, (ds_list_size(list))-1);
    }
}
if(list_category == "malas"){
    while(ds_map_find_value(list[| randompick],"correcta") == global.last_wrong && ds_list_size(list)>1){
        show_debug_message("Se repitió el último malo");
        randompick = irandom_range(0, (ds_list_size(list))-1);
    }
}
global.pick = randompick;
/*Si quiero elegir con otra lista aparte: */
//global.imagen_actual = ds_list_find_value(global.sprites_list,randompick);
/*Manteniendo los nombres de sprites en la lista inicial: */
global.imagen_actual = ds_map_find_value(list[| randompick],"sprite");
global.sonido_actual = ds_map_find_value(list[| randompick],"audio");
instance_create(room_width/2, 80,obj_actual_sprite);
global.alternativas_actual = ds_map_find_value(list[| randompick],"alternativas");
global.correcta_actual = ds_map_find_value(list[| randompick],"correcta");
global.last_word = global.correcta_actual;
