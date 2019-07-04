/// ending_condition()

if(ds_list_size(global.list_buenas) == ds_list_size(global.backup_list))
{
    guardar(true);
    audio_stop_sound(global.snd);
    room_goto(rm_gamefinished);
}
else{
    difference = ds_list_size(global.backup_list) - ds_list_size(global.list_buenas);
    str = "Faltan: "+string(difference)+" correctas para ganar la partida";
    show_debug_message(str);
}
