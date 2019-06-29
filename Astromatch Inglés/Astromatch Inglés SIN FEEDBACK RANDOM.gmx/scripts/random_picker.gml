// random_picker(condicion)

if(argument0){
    randomize();
    prob = random_range(0,1);
    show_debug_message(prob);
    
    if(prob <= global.pBuenas){
        show_debug_message("entre 0 y 0.4");
        if(ds_list_size(global.list_buenas) != 0){
            show_debug_message("tocaron buenas y sí hay buenas")
            global.origen = "buenas";
            random_pick(global.list_buenas);
        }
        else if(ds_list_size(global.list_malas) != 0){
            show_debug_message("tocaron buenas, no habían buenas, pero hay malas");
            global.origen = "malas";
            random_pick(global.list_malas);
        }
        else{
            show_debug_message("tocaron buenas, y no hay ni buenas ni malas");
            global.origen = "nuevas";
            random_pick(global.list);
        }
    }
    
    if(global.pBuenas < prob && prob <= global.pMalas+global.pBuenas){
        show_debug_message("entre 0.4 y 0.6");
        if(ds_list_size(global.list_malas) != 0){
            show_debug_message("tocaron malas y sí hay malas");
            global.origen = "malas";
            random_pick(global.list_malas);
        }
        else if(ds_list_size(global.list_buenas) != 0){
            show_debug_message("tocaron malas, no habían malas, pero hay buenas");
            global.origen = "buenas";
            random_pick(global.list_buenas);  
        }
        else{
            show_debug_message("tocaron malas, y no hay ni buenas ni malas");
            global.origen = "nuevas";
            random_pick(global.list);
        }
    }
    
    if(global.pMalas+global.pBuenas < prob && prob <= global.pMalas+global.pBuenas+global.pNuevas){
        show_debug_message("entre 0.6 y 1");
        if(ds_list_size(global.list) != 0){
            show_debug_message("tocaron nuevas y sí hay nuevas");
            global.origen = "nuevas";
            random_pick(global.list);
        }
        else if(ds_list_size(global.list_buenas) != 0){
            show_debug_message("tocaron nuevas, no habían nuevas, pero hay buenas");
            global.origen = "buenas";
            random_pick(global.list_buenas);
        }
        else{
            show_debug_message("tocaron nuevas, y no hay ni nuevas ni malas");
            global.origen = "malas";
            random_pick(global.list_malas);
        }
    }
    
    show_debug_message("Origen del ejercicio:");
    show_debug_message(prob);
    show_debug_message(global.origen);
}

/*Falta agregar condición según parámetros para saber de qué lista pickear y hacer los ifs 
correspondientes. Además, guardar en variable global.origen el nombre de la lista de la que 
vienen los ejercicios para saber desde cuál mover y en cuál elininar en spawner Alarm[0] 
justo abajo de la línea 22 */
