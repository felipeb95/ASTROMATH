/// @desc Resetear velocidad room
game_set_speed(60,gamespeed_fps);
if(global.vidas>=0) SlideTransition(TRANS_MODE.GOTO,room);
else SlideTransition(TRANS_MODE.RESTART);