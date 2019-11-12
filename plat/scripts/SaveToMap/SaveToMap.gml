/// @desc SaveToMap()

var miniMap = ds_map_create();

ds_map_add(miniMap, "a", string(global.a));
ds_map_add(miniMap, "b", string(global.b));
ds_map_add(miniMap, "r", string(global.r));
ds_map_add(miniMap, "respuesta", string(global.respuesta));
if(global.buena) ds_map_add(miniMap, "estado", "correcta");
else ds_map_add(miniMap, "estado", "incorrecta");
ds_map_add(miniMap, "etapa", string(global.etapa));
ds_map_add(miniMap, "origen", global.origen);
ds_map_add(miniMap, "operacion", global.operacion);




ds_map_add_map(oDataSaver.gameMap, string(global.numEjercicios), miniMap);
