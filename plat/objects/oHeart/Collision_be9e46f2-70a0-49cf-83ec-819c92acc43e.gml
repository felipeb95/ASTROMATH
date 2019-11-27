global.vidas += 1;
audio_sound_gain(snCoin, 0.2, 0);
audio_play_sound(snCoin,5,false);
instance_destroy();