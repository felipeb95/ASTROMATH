/// random_pick_v3(list,list_cat)
randomize();
var list = argument0;
var list_category = argument1;

randompick = irandom_range(0, (ds_list_size(list))-1);
global.pick = randompick;
global.imagen_actual = ds_map_find_value(list[| randompick],"sprite");
global.sonido_actual = ds_map_find_value(list[| randompick],"audio");
instance_create(room_width/2, 80,obj_actual_sprite);
global.alternativas_actual = ds_map_find_value(list[| randompick],"alternativas");
global.correcta_actual = ds_map_find_value(list[| randompick],"correcta");
global.last_word = global.correcta_actual;
