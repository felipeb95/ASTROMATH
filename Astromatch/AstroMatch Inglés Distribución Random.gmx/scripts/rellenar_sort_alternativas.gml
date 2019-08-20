/// rellenar_sort_alternativas(condicion)

if(argument0){
    
    if(ds_list_size(global.lista_alternativas) > 0){
        ds_list_clear(global.lista_alternativas);    
    }
    
    for(i = 0; i < 4; i++){
        ds_list_add(global.lista_alternativas, i);
    }
}
