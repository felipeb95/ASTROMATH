/// show_list(list)
var list = argument0;
show_debug_message("Largo de lista:")
show_debug_message(ds_list_size(list));

for(index = 0; index < ds_list_size(list); index++){
        palabra_sorteada = ds_map_find_value(list[| index],"correcta");
        imagen_url_palabra = ds_map_find_value(list[| index],"url");
        alternativas = ds_map_find_value(list[| index],"alternativas");
        sprite = ds_map_find_value(list[| index],"sprite");
        str_palabra = "Palabra sorteada: "+palabra_sorteada;
        show_debug_message(str_palabra)
        str_sprite = "Sprite asignado en lista de sprites: "+string(sprite);
        show_debug_message(str_sprite);
        str_imagen = "URL de imagen: "+imagen_url_palabra;
        show_debug_message(str_imagen);
        show_debug_message("--- ALTERNATIVAS ---");
        str_alternativas = "Alternativas de palabra: "+
            alternativas[0]+" | "+
            alternativas[1]+" | "+
            alternativas[2]+" | "+
            alternativas[3];
        show_debug_message(str_alternativas);
    }
