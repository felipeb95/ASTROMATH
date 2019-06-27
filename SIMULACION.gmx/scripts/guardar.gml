/// guardar(condicion)

if(argument0){
    roundMap = ds_map_create();
    ds_map_add(roundMap, "multiplo_a", global.a);
    ds_map_add(roundMap, "multiplo_b", global.b);
    ds_map_add(roundMap, "respuesta_correcta", global.r);
    ds_map_add(roundMap, "total_intentos", global.intentos);
    ds_map_add(roundMap, "ultima_respuesta", global.numM);
    ds_map_add(roundMap, "tiempo_respuesta", global.tiempoUltimaRespuesta);
    ds_map_add(roundMap, "estado_respuesta", global.estado);
    ds_map_add(roundMap, "etapa", (global.dificultad+1));
    ds_map_add(roundMap, "origen", global.origen);
    //OONDICIÓN SI ES QUE NO SE LE DISPARÓ A NINGÚN METEROTIO (NO HUBO INTENTO)
    var copiaIntentosRonda = ds_map_create();
    ds_map_copy(copiaIntentosRonda, global.intentosRonda);
    ds_map_add_map(roundMap, "intentos", copiaIntentosRonda);
    
    var copiaRonda = ds_map_create();
    ds_map_copy(copiaRonda, roundMap);
    ds_map_add_map(global.bigMap, global.numEjercicio, copiaRonda);
    
    ds_map_clear(global.intentosRonda); // Se agrega la última ronda (en la que se muere)
    //ds_map_clear(roundMap);
    
    
    if(!is_undefined(global.faciles))
        ds_map_add(global.dificultadesMap, "faciles", global.faciles);
    else 
        ds_map_add(global.dificultadesMap, "faciles", "null");

    if(!is_undefined(global.medios)) 
        ds_map_add(global.dificultadesMap, "medios", global.medios);
    else 
        ds_map_add(global.dificultadesMap, "medios", "null");

    if(!is_undefined(global.dificiles))
        ds_map_add(global.dificultadesMap, "dificiles", global.dificiles)
    else
        ds_map_add(global.dificultadesMap, "dificiles", "null");
    
    var jsonEjercicios = json_encode(global.bigMap);
    var jsonExtras = json_encode(global.dificultadesMap);

    show_debug_message("//////////// GAME OVER ////////////");
    show_debug_message(jsonEjercicios);
    show_debug_message(jsonExtras);
    

    //VERSION 1 SIN ELEMENTOS GAMIFICACIÓN 

    /*
    http_get("async.php?f=sv&puntaje="+string(global.puntaje)+
    "&correctas="+string(global.correctas)+
    "&incorrectas="+string(global.incorrectas)+
    "&ejercicios="+string(global.wave)+
    "&nRondas="+string(global.nrondas)+
    "&jsonEjercicios="+string(jsonEjercicios)+
    "&jsonExtras="+string(jsonExtras));
    */

    var data_send = "puntaje="+string(global.puntaje)+
    "&correctas="+string(global.correctas)+
    "&incorrectas="+string(global.incorrectas)+
    "&ejercicios="+string(global.wave)+
    "&nRondas="+string(global.nrondas)+
    "&jsonEjercicios="+string(jsonEjercicios)+
    "&jsonExtras="+string(jsonExtras);
    
    post = http_post_string("async.php", data_send);
    
    
}
