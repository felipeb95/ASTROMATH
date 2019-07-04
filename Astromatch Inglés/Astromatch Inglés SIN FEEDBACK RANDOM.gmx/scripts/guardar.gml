/// guardar(condicion)

if(argument0){
    roundMap = ds_map_create();
    ds_map_add(roundMap, "palabra", global.correcta_actual);
    ds_map_add(roundMap, "total_intentos", global.intentos);
    ds_map_add(roundMap, "tiempo_respuesta", global.tiempoUltimaRespuesta);
    ds_map_add(roundMap, "estado_respuesta",global.estado);
    ds_map_add(roundMap, "origen",global.origen);
    //OONDICIÓN SI ES QUE NO SE LE DISPARÓ A NINGÚN METEROTIO (NO HUBO INTENTO)
    
    var copiaIntentosRonda = ds_map_create();
    ds_map_copy(copiaIntentosRonda, global.intentosRonda);
    ds_map_add_map(roundMap, "intentos", copiaIntentosRonda);
    
    var copiaRonda = ds_map_create();
    ds_map_copy(copiaRonda, roundMap);
    ds_map_add_map(global.bigMap, global.numEjercicio, copiaRonda);
    
    ds_map_clear(global.intentosRonda); // Se agrega la última ronda (en la que se muere)
    
    
    var jsonEjercicios = json_encode(global.bigMap);
    
    show_debug_message("//////////// GAME OVER ////////////");
    show_debug_message(jsonEjercicios);
    
    var data_send = "puntaje="+string(global.puntaje)+
    "&correctas="+string(global.correctas)+
    "&incorrectas="+string(global.incorrectas)+
    "&ejercicios="+string(global.waves)+
    "&nRondas="+string(global.nrondas)+
    "&jsonEjercicios="+string(jsonEjercicios);
        
    post = http_post_string("async.php", data_send);
}
