    /// next_level_condition()
var bonus = 0;
A = 20; // Factor de bonificación
if((ds_list_size(global.list_buenas) == global.ipl[global.etapa-1]  || global.wtl == global.mwpl ) && global.etapa == global.tl)
{
    global.wtl++;
    global.bonus_points = (global.mwpl - global.wtl )* A;
    str_bonus = "[BONUS] Se suman "+string(global.bonus_points)+" con "+string(global.wtl)+"/"+string(global.mwpl);
    show_debug_message(str_bonus);
    if(global.bonus_points > 0){
        global.puntaje += global.bonus_points;
        instance_create(0,0,obj_shaky_text);
    }
    guardar(true);
    audio_stop_sound(global.snd);
    room_goto(rm_gamefinished);
    global.wpl = 0;
    global.wtl = 0;
    global.recent_change = true;
}
if((ds_list_size(global.list_buenas) == global.ipl[global.etapa-1] || global.wtl == global.mwpl ) && global.etapa != global.tl)
{
    global.wtl++;
    //cambiar fondo y avanzar etapa
    global.bonus_points = (global.mwpl - global.wtl )* A;
    str_bonus = "[BONUS] Se suman "+string(global.bonus_points)+" con "+string(global.wtl)+"/"+string(global.mwpl);
    show_debug_message(str_bonus);
    if(global.bonus_points > 0){
        global.puntaje += global.bonus_points;
        instance_create(0,0,obj_shaky_text);
    }
    global.etapa++;
    global.recent_level_up = true;
    pick_items_by_level(global.etapa);
    instance_create(0,0,obj_fader);
    global.wpl = 0;
    global.wtl = 0;
    global.recent_change = true;
}

var diff = global.ipl[global.etapa-1] - ds_list_size(global.list_buenas);
var diff_str = "Faltan "+string(diff)+" correctas para el siguiente nivel";
show_debug_message(" ");
show_debug_message(diff_str);
