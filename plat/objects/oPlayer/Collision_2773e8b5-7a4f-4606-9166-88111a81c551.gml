if(keyboard_check_pressed(vk_down)){	
	global.respondida = true;
	with(other){
		global.respuesta = num;
		if(num==global.r) {
			
			global.buenas++;
			instance_destroy();
		}
		else {
			global.malas++;	
			KillPlayer();
			instance_destroy(oPlayer);
		}
		
	}
	
	
}