// random_picker(condicion)

if(argument0){
    randomize();
    prob = random_range(0,1);
    str_origen = "Origen";
    
   if(ds_list_size(global.list) > 0){
    random_pick_v3(global.list,"nuevas");
    str_origen += ": nuevas";
    global.malas_seguidas = 0;
    global.origen = "nuevas";
   }
   
   if(ds_list_size(global.list) == 0){
        if(global.malas_seguidas == 2){
            random_pick_v3(global.list_buenas,"buenas");
            global.malas_seguidas = 0;
            str_origen += ": buenas";
            global.origen = "buenas";    
        }
        else{
            random_pick_v3(global.list_malas,"malas");
            str_origen += ": malas";
            global.origen = "malas";
        }
   }
  
   show_debug_message(str_origen);
}

