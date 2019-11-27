var json = async_load[? "result"]
show_debug_message(json);
var map = json_decode(json);

if(map = -1){
    show_debug_message("Invalid result");
}

if(ds_exists(map,ds_type_map)){
    show_debug_message("Es mapa");
    /* POR REVISAR: En este if se podrían poner los demás que vienen abajo
    En definitiva, sólo si hay un mapa correcto se debería hacer todo lo demás y cambiar
    la condición que señala que se puede avanzar a la siguietne room (go_to_next);
    */
}

if(ds_map_exists(map, "menorMultiplo")){
    var menorMultiplo = map[? "menorMultiplo"];
     show_debug_message("menorMultiplo funciona");
     show_debug_message(menorMultiplo);
     global.minA = real(menorMultiplo);
}

if(ds_map_exists(map, "mayorMultiplo")){
    var mayorMultiplo = map[? "mayorMultiplo"];
     show_debug_message("mayorMultiplo funciona");
     show_debug_message(mayorMultiplo);
     global.maxB = real(mayorMultiplo);
}

if(ds_map_exists(map, "porcBuenas")){
    var porcBuenas = map[? "porcBuenas"];
     show_debug_message("porcBuenas funciona");
     show_debug_message(porcBuenas);
     global.porcBuenas = real(porcBuenas);
}
if(ds_map_exists(map, "porcMalas")){
    var porcMalas = map[? "porcMalas"];
     show_debug_message("porcMalas funciona");
     show_debug_message(porcMalas);
     global.porcMalas = real(porcMalas);
}
if(ds_map_exists(map, "debug")){
    var debug = real(map[? "debug"]);
     show_debug_message("debug funciona");
     show_debug_message(debug);
     if(debug == 0)
        global.debug = false;
     else
        global.debug = true;
}
if(ds_map_exists(map, "pPuntos")){
    var pPuntos = map[? "pPuntos"];
     show_debug_message("pPuntos funciona");
     show_debug_message(pPuntos);
     global.pPuntos = real(pPuntos);
}
if(ds_map_exists(map, "pMultiplicador")){
    var pMultiplicador = map[? "pMultiplicador"];
     show_debug_message("pMultiplicador funciona");
     show_debug_message(pMultiplicador);
     global.pMultiplicador = real(pMultiplicador);
}
if(ds_map_exists(map, "pEscudo")){
    var pEscudo = map[? "pEscudo"];
     show_debug_message("pEscudo funciona");
     show_debug_message(pEscudo);
     global.pEscudo = real(pEscudo);
}
if(ds_map_exists(map, "pPoder")){
    var pPoder = map[? "pPoder"];
     show_debug_message("pPoder funciona");
     show_debug_message(pPoder);
     global.pPoder = real(pPoder);
}
if(ds_map_exists(map, "pSlowmo")){
    var pSlowmo = map[? "pSlowmo"];
     show_debug_message("pSlowmo funciona");
     show_debug_message(pSlowmo);
     global.pSlowmo = real(pSlowmo);
}if(ds_map_exists(map, "vidas")){
    var vidas = map[? "vidas"];
     show_debug_message("vidas funciona");
     show_debug_message(vidas);
     global.vidas = real(vidas);
}


go_to_next = true;