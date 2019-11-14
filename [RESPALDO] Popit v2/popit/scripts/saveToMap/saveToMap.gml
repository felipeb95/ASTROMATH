/// saveToMap(firstA, firstB, a, b, type, state, subexercise, exercise);

var firstA = argument0;
var firstB = argument1;
var a = argument2;
var b = argument3;
var type = argument4;
var state = argument5;
var subexercise = argument6;
var exercise = argument7;

var miniMap = ds_map_create();

ds_map_add(miniMap, "firstA", string(firstA));
ds_map_add(miniMap, "firstB", string(firstB));
ds_map_add(miniMap, "a", string(a));
ds_map_add(miniMap, "b", string(b));
ds_map_add(miniMap, "type", type);
ds_map_add(miniMap, "state", state);
ds_map_add(miniMap, "subexerciseNumber", subexercise);
ds_map_add(miniMap, "exerciseNumber", exercise);

ds_map_add_map(oDataSaver.gameMap, subexercise, miniMap);
