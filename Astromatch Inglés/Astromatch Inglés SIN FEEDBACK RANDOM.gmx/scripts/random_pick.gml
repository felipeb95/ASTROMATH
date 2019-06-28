// random_pick(condicion)

if(argument0){
    randompick = random_range(0, ds_list_size(global.list));
    global.imagen_actual = ds_list_find_value(global.sprites_list,randompick);
    instance_create(room_width/2, 50,obj_actual_sprite);
    global.alternativas_actual = ds_map_find_value(global.list[| randompick],"alternativas");
    global.correcta_actual = ds_map_find_value(global.list[| randompick],"correcta");
}

