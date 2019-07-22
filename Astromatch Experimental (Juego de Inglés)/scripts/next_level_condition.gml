/// next_level_condition()
var bonus = 0;
A = 20; // Factor de bonificación
if((ds_list_size(global.list_buenas) == global.ipl[global.etapa-1]  || global.wpl == global.mwpl ) && global.etapa == global.tl)
{
    global.bonus_points = (global.wpl - global.wtl )* A;
    if(global.bonus_points > 0){
        global.puntaje += global.bonus_points;
        instance_create(0,0,obj_shaky_text);
    }
    guardar(true);
    audio_stop_sound(global.snd);
    room_goto(rm_gamefinished);
}
if((ds_list_size(global.list_buenas) == global.ipl[global.etapa-1] || global.wpl == global.mwpl ) && global.etapa != global.tl)
{
    //cambiar fondo y avanzar etapa
    global.bonus_points = (global.mwpl - global.wtl )* A;
    if(global.bonus_points > 0){
        global.puntaje += global.bonus_points;
        instance_create(0,0,obj_shaky_text);
    }
    global.etapa++;
    pick_items_by_level(global.etapa);
    instance_create(0,0,obj_fader);
    global.wpl = 0;
}

var diff = global.ipl[global.etapa-1] - ds_list_size(global.list_buenas);
var diff_str = "Faltan "+string(diff)+" correctas para el siguiente nivel";
show_debug_message(" ");
show_debug_message(diff_str);
