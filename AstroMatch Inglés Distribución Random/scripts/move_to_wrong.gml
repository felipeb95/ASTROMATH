/// move_to_wrong()

if(global.origen = "nuevas"){
    ds_list_add(global.list_malas,global.random_list[| global.pick]);
    //ds_list_delete(global.list,global.pick);
}

if(global.origen = "buenas"){
    ds_list_add(global.list_malas,global.list_buenas[| global.pick]);
    ds_list_delete(global.list_buenas,global.pick);
}
