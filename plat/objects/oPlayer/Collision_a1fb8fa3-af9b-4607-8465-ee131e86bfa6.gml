if(global.bonusActivo!=1 and global.bonusActivo!=2) {
	KillPlayer();
	with(other) instance_destroy();
}
else{
	if(instance_exists(oEscudo)) {
		instance_destroy(oEscudo);
		with(other) instance_destroy();
		global.bonusActivo=0;
	}
	if(instance_exists(oPoder)) {
		with(other) instance_destroy();
		global.bonusActivo=0;
	}
}

