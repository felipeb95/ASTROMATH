/// random_pick(list)
randomize();
var list = argument0;

randompick = irandom_range(0, (ds_list_size(list))-1);
global.pick = randompick;
/*Si quiero elegir con otra lista aparte: */
//global.imagen_actual = ds_list_find_value(global.sprites_list,randompick);
/*Manteniendo los nombres de sprites en la lista inicial: */
global.imagen_actual = ds_map_find_value(list[| randompick],"sprite");
instance_create(room_width/2, 80,obj_actual_sprite);
global.alternativas_actual = ds_map_find_value(list[| randompick],"alternativas");
global.correcta_actual = ds_map_find_value(list[| randompick],"correcta");
global.last_word = global.correcta_actual;
