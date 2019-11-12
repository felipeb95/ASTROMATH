if(point_in_circle(oPlayer.x,oPlayer.y,x,y,64) and !instance_exists(oText)){
	with(instance_create_layer(x,y-64,layer,oText)){
		if(global.haskey==0) text = "Necesitas una llave.";
		else text = "Presiona la flecha abajo para abrir.";
		length = string_length(text);
	}
	with(oCamera){
		follow = other.id;
	}
}