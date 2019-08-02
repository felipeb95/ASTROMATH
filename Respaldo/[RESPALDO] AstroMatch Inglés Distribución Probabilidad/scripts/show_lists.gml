// show_lists(condicion)

if(argument0){

    if(ds_list_size(global.list)>0){
        show_debug_message("Lista del banco");
        show_list(global.list);
    }
    else
        show_debug_message("Lista del banco vacía");
        
    if(ds_list_size(global.list_buenas)>0){
       show_debug_message("Lista de buenas");
       show_list(global.list_buenas);
    }
    else
        show_debug_message("Lista de buenas vacía");

    if(ds_list_size(global.list_malas)>0){
        show_debug_message("Lista del malas");
        show_list(global.list_malas);
    }
    else
        show_debug_message("Lista de malas vacía");

}
