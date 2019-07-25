/// @description Insert description here
// You can write your code in this editor
var i_d = ds_map_find_value(async_load, "id");
	if i_d == nombresito {
		if ds_map_find_value(async_load, "status"){
		    if ds_map_find_value(async_load, "result") != ""{
		        global.nombresote = ds_map_find_value(async_load, "result");
		        }
		    }
		}
		
if(global.nombresote != ""){
	room_goto(room_zombie);
}