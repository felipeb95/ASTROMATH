switch(mpos){
    case 0:
    {
        ds_list_copy(global.list,global.backup_list);
        ds_list_destroy(global.list_buenas);
        ds_list_destroy(global.list_malas);
        ds_list_destroy(global.lista_alternativas);
        ds_map_destroy(global.bigMap);
        ds_map_destroy(global.intentosRonda);
        room_goto(rm_space);
        global.snd=audio_play_sound(music,10,true);
        audio_sound_gain(global.snd,0.4,0);
        break;
    }
    case 1:
    {
        /* idea: se podrían borrar los sprites en la lista de sprites para luego,
            al volver al principio, cargar todos si es que se agregaron más a la BD y
            no dejar sprites en memoria que ya no se usarán y que realmente están
            duplicados*/
        
        room_goto(rm_start);
        break;
    }
    default: break;
}
