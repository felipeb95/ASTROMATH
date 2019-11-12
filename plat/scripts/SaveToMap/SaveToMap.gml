/// @desc SaveToMap()

var miniMap = ds_map_create();

ds_map_add(miniMap, "origen", global.origen);
ds_map_add(miniMap, "operacion", global.operacion);
if(global.buena)
	ds_map_add(miniMap, "estado", "correcta");
else
	ds_map_add(miniMap, "estado", "incorrecta");
ds_map_add(miniMap, "a", string(global.a));
ds_map_add(miniMap, "b", string(global.b));
ds_map_add(miniMap, "respuesta_correcta", string(global.r));
ds_map_add(miniMap, "respuesta_escogida", string(global.respuesta));
ds_map_add(miniMap, "num_ejercicio", string(global.numEjercicios));
ds_map_add(miniMap, "room", room_get_name(room));


ds_map_add_map(oDataSaver.gameMap, string(global.numEjercicios), miniMap);
