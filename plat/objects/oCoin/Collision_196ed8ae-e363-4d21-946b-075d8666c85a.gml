global.puntaje+=10;
global.puntajethisroom+=10;
with(oGame) killtextscale = 2;
audio_play_sound(snCoin,5,false);
instance_destroy();