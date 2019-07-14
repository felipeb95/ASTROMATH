// random_picker(condicion)

if(argument0){
    randomize();
    prob = random_range(0,1);
    str_origen = "Origen";
    
    if(prob <= global.pBuenas){
        str_prob = "Prob entre 0 y "+string(global.pBuenas);
        show_debug_message(str_prob);
        if(ds_list_size(global.list_buenas) != 0){
            show_debug_message("tocaron buenas y sí hay buenas")
            global.origen = "buenas";
            random_pick(global.list_buenas);
        }
        else if(ds_list_size(global.list) != 0){
            show_debug_message("tocaron buenas, no habían buenas, pero hay nuevas");
            global.origen = "nuevas";
            random_pick(global.list);
            str_origen = str_origen + " (modificado)";
            
        }
        else{
            show_debug_message("tocaron buenas, y no hay ni buenas ni nuevas");
            global.origen = "malas";
            random_pick(global.list_malas);
            str_origen = str_origen + " (modificado)";
        }
    }
    
    if(global.pBuenas < prob && prob <= global.pMalas+global.pBuenas){
        str_prob = "Prob entre "+string(global.pBuenas)+" y "+string(global.pBuenas+global.pMalas);
        show_debug_message(str_prob);
        if(ds_list_size(global.list_malas) != 0){
            show_debug_message("tocaron malas y sí hay malas");
            global.origen = "malas";
            random_pick(global.list_malas);
        }
        else if(ds_list_size(global.list) != 0){
            show_debug_message("tocaron malas, no habían malas, pero hay nuevas");
            global.origen = "nuevas";
            random_pick(global.list);
            str_origen = str_origen + " (modificado)";
        }
        else{
            show_debug_message("tocaron malas, y no hay ni malas ni nuevas");
            global.origen = "buenas";
            random_pick(global.list_buenas);
            str_origen = str_origen + " (modificado)";
        }
    }
    
    if(global.pMalas+global.pBuenas < prob && prob <= global.pMalas+global.pBuenas+global.pNuevas){
        str_prob = "Prob entre "+string(global.pBuenas+global.pMalas)+" y "
        +string(global.pBuenas+global.pMalas+global.pNuevas);
        if(ds_list_size(global.list) != 0){
            show_debug_message("tocaron nuevas y sí hay nuevas");
            global.origen = "nuevas";
            random_pick(global.list);
            
        }
        else if(ds_list_size(global.list_malas) != 0){
            show_debug_message("tocaron nuevas, no habían nuevas, pero hay malas");
            global.origen = "malas";
            random_pick(global.list_malas);
            str_origen = str_origen + " (modificado)";
        }
        else{
            show_debug_message("tocaron nuevas, y no hay ni nuevas ni malas");
            global.origen = "buenas";
            random_pick(global.list_buenas);
            str_origen = str_origen + " (modificado)";
        }
    }
    
    str_prob = "Float al azar: "+string(prob)+" | "+str_origen+": "+global.origen;
    show_debug_message(str_prob);
}

/*Falta agregar condición según parámetros para saber de qué lista pickear y hacer los ifs 
correspondientes. Además, guardar en variable global.origen el nombre de la lista de la que 
vienen los ejercicios para saber desde cuál mover y en cuál elininar en spawner Alarm[0] 
justo abajo de la línea 22 */
