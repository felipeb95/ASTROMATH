/// random_pick(list)
randomize();
var list = argument0;

show_debug_message("LISTA EN RANDOM_PICK");
show_list(list);

randompick = irandom_range(0, (ds_list_size(list))-1);
show_debug_message("NUMERO PICKEADO ALEATORIAMENTE");
show_debug_message(randompick);
global.pick = randompick;
/*Si quiero elegir con otra lista aparte: */
//global.imagen_actual = ds_list_find_value(global.sprites_list,randompick);
/*Manteniendo los nombres de sprites en la lista inicial: */
global.imagen_actual = ds_map_find_value(list[| randompick],"sprite");
show_debug_message("-------------- SPRITE A DIBUJAR --------------");
show_debug_message(global.imagen_actual);
instance_create(room_width/2, 50,obj_actual_sprite);
global.alternativas_actual = ds_map_find_value(list[| randompick],"alternativas");
global.correcta_actual = ds_map_find_value(list[| randompick],"correcta");
