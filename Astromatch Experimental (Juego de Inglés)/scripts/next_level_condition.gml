/// next_level_condition()
var bonus = 0;
if((ds_list_size(global.list_buenas) == global.ipl[global.etapa-1]  || global.wpl == global.mwpl ) && global.etapa == global.tl)
{
    bonus = (global.wpl - global.wtl )* 100;
    if(bonus>0) 
        global.puntaje += bonus;
    guardar(true);
    audio_stop_sound(global.snd);
    room_goto(rm_gamefinished);
}
if((ds_list_size(global.list_buenas) == global.ipl[global.etapa-1] || global.wpl == global.mwpl ) && global.etapa != global.tl)
{
    //cambiar fondo y avanzar etapa
    bonus = (global.wpl - global.wtl )* 100;
    if(bonus>0) 
        global.puntaje += bonus;
    global.etapa++;
    pick_items_by_level(global.etapa);
    instance_create(0,0,obj_fader);
    global.wpl = 0;
}

var diff = global.ipl[global.etapa-1] - ds_list_size(global.list_buenas);
var diff_str = "Faltan "+string(diff)+" correctas para el siguiente nivel";
show_debug_message(" ");
show_debug_message(diff_str);
