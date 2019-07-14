/// show_list(list)
var list = argument0;
show_debug_message("Largo de lista:")
show_debug_message(ds_list_size(list));

for(index = 0; index < ds_list_size(list); index++){
        palabra_sorteada = ds_map_find_value(list[| index],"correcta");
        imagen_url_palabra = ds_map_find_value(list[| index],"url");
        alternativas = ds_map_find_value(list[| index],"alternativas");
        sprite = ds_map_find_value(list[| index],"sprite");
        etapa = ds_map_find_value(list[| index],"etapa");
        audio_url_palabra = ds_map_find_value(list[| index],"audio");
        str_palabra = "Palabra sorteada: "+palabra_sorteada;
        show_debug_message(str_palabra)
        str_sprite = "Sprite asignado en lista de sprites: "+string(sprite);
        show_debug_message(str_sprite);
        str_imagen = "URL de imagen: "+imagen_url_palabra;
        show_debug_message(str_imagen);
        str_audio = "URL de audio: "+string(audio_url_palabra);
        show_debug_message(str_audio);
        str_alternativas = "Alternativas de palabra: "+
            alternativas[0]+" | "+
            alternativas[1]+" | "+
            alternativas[2]+" | "+
            alternativas[3];
        show_debug_message(str_alternativas);
        str_etapa = "Etapa correspondiente: "+string(etapa);
        show_debug_message(str_etapa);
    }
