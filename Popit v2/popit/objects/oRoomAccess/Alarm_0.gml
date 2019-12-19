loadingTypewriterOut += string_char_at(loadingMsg, i);
i ++;
if( (i-1) == string_length(loadingMsg))
{
	alarm[1] = room_speed*2;
}
else
{
	alarm[0] = 10;
}

