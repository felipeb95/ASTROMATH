global.puntaje+=valor;
global.puntajethisroom+=valor;
with(oGame) killtextscale = 2;
audio_play_sound(snCoin,5,false);
global.bonusActivo = 0;
instance_destroy();