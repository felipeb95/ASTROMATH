switch(mpos){
    case 0:
    {
        room_goto(rm_space);
        global.snd=audio_play_sound(music,10,true);
        audio_sound_gain(global.snd,0.4,0);
        break;
    }
    case 1:
    {
        room_goto(rm_start);
        break;
    }
    default: break;
}
