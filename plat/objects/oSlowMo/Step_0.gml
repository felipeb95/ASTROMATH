if(instance_exists(oPlayer)){
	x = oPlayer.x;
	y = oPlayer.y;
}
else {
	global.bonusActivo = 0;
	instance_destroy();
}