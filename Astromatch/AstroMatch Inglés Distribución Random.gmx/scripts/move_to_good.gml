/// move_to_good()

if(global.origen = "nuevas"){
    ds_list_add(global.list_buenas,global.random_list[| global.pick]);
    //ds_list_delete(global.list,global.pick);
}
if(global.origen = "malas"){
    ds_list_add(global.list_buenas,global.list_malas[| global.pick]);
    ds_list_delete(global.list_malas,global.pick);
}
