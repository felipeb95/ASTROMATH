global.mostrarEjercicio = true;
global.haskey = 0;
instance_destroy(oFondo);
//Sobreescribir
if(file_exists(SAVEFILE)) file_delete(SAVEFILE);
audio_play_sound(snMusic,10,true);
//Crear nuevo save
var file;
file = file_text_open_write(SAVEFILE);
file_text_write_real(file,room);
file_text_write_real(file,global.kills);
file_text_write_real(file,global.hasgun);
file_text_close(file);


if(global.bonusActivo == 1){
	show_debug_message("ESCUDO");
	instance_create_depth(oPlayer.x, oPlayer.y, -16000, oEscudo);
}
if(global.bonusActivo == 2){
	show_debug_message("PODER");
	instance_create_depth(oPlayer.x, oPlayer.y, -16000, oPoder);
}
if(global.bonusActivo == 5){
	show_debug_message("SLOWMO");
	instance_create_depth(oPlayer.x, oPlayer.y, -16000, oSlowMo);
}