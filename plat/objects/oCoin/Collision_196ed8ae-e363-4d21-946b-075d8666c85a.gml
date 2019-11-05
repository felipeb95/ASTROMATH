global.puntaje+=10;
global.puntajethisroom+=10;
with(oGame) killtextscale = 2;
audio_sound_gain(snCoin, 0.5, 0);
audio_play_sound(snCoin,5,false);
instance_destroy();