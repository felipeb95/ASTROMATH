var half = floor(oLogicSpawner.numberOfPrimeAlternatives/2);
var counter = 0;

if(fiftyFiftyOn and allObjectsOnScreen(oAlternativeHolder, 0)){
	with(oAlternativeHolder){
		if(!isCorrect){
			instance_create_depth(id.x, id.y, -1000, oBubblePop);
			instance_destroy(self);
		}
		counter++;
		if(counter == half)
			break;
	}
	audio_play_sound(sndBubblePop, 10, false); // Bubble pop sound once.
	fiftyFiftyOn = false;
}
	