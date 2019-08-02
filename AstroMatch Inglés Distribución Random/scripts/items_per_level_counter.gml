/// items_per_level_counter(list)
var list = argument0;
var level = 1;
var counter = 0;
var level_array = undefined;
var array_c = 0;
show_debug_message("Largo de lista:")
show_debug_message(ds_list_size(list));

for(index = 0; index < ds_list_size(list); index++){
        etapa = ds_map_find_value(list[| index],"etapa");
        
        if(index != 0 && etapa != _etapa){
            level_array[array_c] = counter;
            counter = 0;
            array_c++;
            level++;
        } 
        if(etapa == level)
            counter++;
        if(index == ds_list_size(list)-1){
            level_array[array_c] = counter;
        }
        
        _etapa = etapa;
}
return level_array;
