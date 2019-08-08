/// level_counter(list)
var list = argument0;
var level = 1;
show_debug_message("Largo de lista:")
show_debug_message(ds_list_size(list));

for(index = 0; index < ds_list_size(list); index++){
         etapa = ds_map_find_value(list[| index],"etapa");
        if(index != 0 && etapa != _etapa)
            level++;
        _etapa = etapa;
}

return level;
