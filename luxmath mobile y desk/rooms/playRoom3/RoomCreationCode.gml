if(global.Config == 2){ // MÓVIL
	instance_create_depth(0,0,0,oBallCreatorMobile);
	instance_create_depth(0,0,0,oFingerCatch);
	instance_create_depth(1152,544,-10000,oFireMobile);
	instance_create_depth(1152,544,-10000,oNumberBox);
}
else{
	instance_create_depth(room_width/2, room_height-30, 200, oBallShooter);
	instance_create_depth(0,0,0,oBallCreator);
	instance_create_depth(room_width/2, room_height-30, 200, oFire);
}