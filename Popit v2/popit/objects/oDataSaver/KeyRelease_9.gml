var jsonGameMap = undefined;
if(!ds_map_empty(gameMap)){
	jsonGameMap = json_encode(gameMap);
	show_debug_message("[JSON] "+jsonGameMap);
}
else{
	show_debug_message("gameMap is empty");
}