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
}
if(ds_map_exists(map, "vidas")){
    var vidas = map[? "vidas"];
     show_debug_message("vidas funciona");
     show_debug_message(vidas);
     global.vidas = real(vidas);
}
if(ds_map_exists(map, "feedback")){
    var feedback = map[? "feedback"];
     show_debug_message("feedback funciona");
     show_debug_message(feedback);
     global.feedback = real(feedback);
}
if(ds_map_exists(map, "tInicial")){
    var tInicial = map[? "tInicial"];
     show_debug_message("tInicial funciona");
     show_debug_message(tInicial);
     global.tInicial = real(tInicial);
}
if(ds_map_exists(map, "tAumento")){
    var tAumento = map[? "tAumento"];
     show_debug_message("tAumento funciona");
     show_debug_message(tAumento);
     global.tAumento = real(tAumento);
}
if(ds_map_exists(map, "porcT")){
    var porcT = map[? "porcT"];
     show_debug_message("porcT funciona");
     show_debug_message(porcT);
     global.porcT = real(porcT);
}
if(ds_map_exists(map, "grupo")){
    var grupo = map[? "grupo"];
     show_debug_message("grupo funciona");
     show_debug_message(grupo);
     global.grupo = real(grupo);
}
if(ds_map_exists(map, "tiempo")){
    var tiempo = map[? "tiempo"];
     show_debug_message("tiempo funciona");
     show_debug_message(tiempo);
     global.tiempo = real(tiempo);
}
if(ds_map_exists(map, "tMin")){
    var tMin = map[? "tMin"];
     show_debug_message("tMin funciona");
     show_debug_message(tMin);
     global.tMin = real(tMin);
}
if(ds_map_exists(map, "tMax")){
    var tMax = map[? "tMax"];
     show_debug_message("tMax funciona");
     show_debug_message(tMax);
     global.tMax = real(tMax);
}
if(ds_map_exists(map, "timeMuerte")){
    var timeMuerte = map[? "timeMuerte"];
     show_debug_message("timeMuerte funciona");
     show_debug_message(timeMuerte);
     global.timeMuerte = real(timeMuerte);
}

go_to_next = true;