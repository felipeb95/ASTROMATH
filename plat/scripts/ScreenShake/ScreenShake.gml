/// @desc ScreenShake(magnitude,frames)
/// @arg Magnitude set the strength of the shake (radius in pixels)
/// @arg Frames set the length of the shake in frames

with(oCamera){
	if(argument0 > shake_remain){
		shake_magnitude = argument0;
		shake_remain = argument0;
		shake_length = argument1;
	}
}