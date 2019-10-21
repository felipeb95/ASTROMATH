if(global.bonusActivo!=1 and global.bonusActivo!=2) {
	KillPlayer();
	with(other) instance_destroy();
}
else{
	if(instance_exists(oEscudo)) {
		instance_destroy(oEscudo);
		global.bonusActivo=0;
	}
}

