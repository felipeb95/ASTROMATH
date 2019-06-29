/// show_list(list)
show_debug_message("####################################");
var list = argument0;
show_debug_message("Largo de lista:")
show_debug_message(ds_list_size(list));

for(index = 0; index < ds_list_size(list); index++){
        palabra_sorteada = ds_map_find_value(list[| index],"correcta");
        imagen_url_palabra = ds_map_find_value(list[| index],"url");
        alternativas = ds_map_find_value(list[| index],"alternativas");
        sprite = ds_map_find_value(list[| index],"sprite");
        show_debug_message("--- SPRITE ASIGNADO EN LISTA ---");
        show_debug_message(sprite);
        show_debug_message("--- URL IMAGEN ---");
        show_debug_message(imagen_url_palabra);
        show_debug_message("--- ALTERNATIVAS ---");
        show_debug_message(alternativas[0]);
        show_debug_message(alternativas[1]);
        show_debug_message(alternativas[2]);
        show_debug_message(alternativas[3]);
        show_debug_message("--- CORRECTA ---");
        show_debug_message(palabra_sorteada);
    }
