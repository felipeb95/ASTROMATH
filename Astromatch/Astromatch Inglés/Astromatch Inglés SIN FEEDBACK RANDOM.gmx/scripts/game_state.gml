/// game_state()

var state_buenas = "Cantidad de buenas: ["+ string(ds_list_size(global.list_buenas))+"]";
var state_malas = "Cantidad de malas: ["+string(ds_list_size(global.list_malas))+"]";
var state_nuevas = "Cantidad de nuevas: ["+string(ds_list_size(global.list))+"]";

if(ds_list_size(global.list_buenas)>=2)
    global.ready_to_pick_buenas = true;

if(ds_list_size(global.list_malas)>=1)
    global.ready_to_pick_malas = true;

show_debug_message("- - - - - - - - - - - - - ");
show_debug_message("- - - - - - - - - - - - - ");
show_debug_message(state_buenas);
show_debug_message(state_malas);
show_debug_message(state_nuevas);
show_debug_message("- - - - - - - - - - - - - ");
show_debug_message("- - - - - - - - - - - - - ");


