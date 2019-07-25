/// @description Insert description here
// You can write your code in this editor
draw_set_font(font1)

//OPERACIONES

/// @description Insert description here
// You can write your code in this editor

if(numOperacion == 1){
	
	if(rand){
		actual = cero * cinco;
	
		enemBueno = floor(random_range(1,4));
		
		resultado_m_1 = floor(random_range(0,9));
		resultado_m_2 = floor(random_range(0,9));
		rand=false;
	}		

	draw_sprite_ext(MSR, 0, 500, 70, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numerosNaranjos, cero, 550, 170, 1, 1, 0, c_white, 1);
	draw_sprite_ext(sprite_X, 0, 400, 60, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numerosNaranjos, cinco, 750, 170, 1, 1, 0, c_white, 1);
	
	actual = cero * cinco;
}

if(numOperacion == 2){
	
	if(rand){
		resultado = cero * seis;
	
		resultado_m_1 = floor(random_range(0,9));
		resultado_m_2 = floor(random_range(0,9));
		rand=false;
	}		

	draw_sprite_ext(MSR, 0, 500, 70, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numerosNaranjos, cero, 550, 170, 1, 1, 0, c_white, 1);
	draw_sprite_ext(sprite_X, 0, 400, 60, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numerosNaranjos, seis, 750, 170, 1, 1, 0, c_white, 1);

	
	actual = cero * seis;
}

if(numOperacion == 3){
	
	if(rand){
		resultado = uno * cinco;
	
		resultado_m_1 = floor(random_range(0,9));
		resultado_m_2 = floor(random_range(0,9));
		rand=false;
	}
	
	draw_sprite_ext(MSR, 0, 500, 70, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numerosNaranjos, uno, 550, 170, 1, 1, 0, c_white, 1);
	draw_sprite_ext(sprite_X, 0, 400, 60, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numerosNaranjos, cinco, 750, 170, 1, 1, 0, c_white, 1);
	
	actual = uno * cinco;
}

if(numOperacion == 4){
	
	if(rand){
		resultado = uno * ocho;
	
		resultado_m_1 = floor(random_range(0,9));
		resultado_m_2 = floor(random_range(0,9));
		rand=false;
	}
	
	draw_sprite_ext(MSR, 0, 500, 70, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numerosNaranjos, uno, 550, 170, 1, 1, 0, c_white, 1);
	draw_sprite_ext(sprite_X, 0, 400, 60, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numerosNaranjos, ocho, 750, 170, 1, 1, 0, c_white, 1);
	
	actual = uno * ocho;
}

if(numOperacion == 5){
	
	if(rand){
		resultado = dos * nueve;
	
		resultado_m_1 = floor(random_range(0,9));
		resultado_m_2 = floor(random_range(0,9));
		rand=false;
	}		

	draw_sprite_ext(MSR, 0, 500, 70, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numerosNaranjos, dos, 550, 170, 1, 1, 0, c_white, 1);
	draw_sprite_ext(sprite_X, 0, 400, 60, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numerosNaranjos, nueve, 750, 170, 1, 1, 0, c_white, 1);

	actual = dos * nueve;
}

if(numOperacion == 6){
	
	if(rand){
		resultado = dos * uno;
	
		resultado_m_1 = floor(random_range(0,9));
		resultado_m_2 = floor(random_range(0,9));
		rand=false;
	}		

	draw_sprite_ext(MSR, 0, 500, 70, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numerosNaranjos, dos, 550, 170, 1, 1, 0, c_white, 1);
	draw_sprite_ext(sprite_X, 0, 400, 60, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numerosNaranjos, uno, 750, 170, 1, 1, 0, c_white, 1);

	
	actual = dos * uno;
}

if(numOperacion == 7){
	
	if(rand){
		resultado = tres * cuatro;
	
		resultado_m_1 = floor(random_range(0,9));
		resultado_m_2 = floor(random_range(0,9));
		rand=false;
	}
	
	draw_sprite_ext(MSR, 0, 500, 70, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numerosNaranjos, tres, 550, 170, 1, 1, 0, c_white, 1);
	draw_sprite_ext(sprite_X, 0, 400, 60, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numerosNaranjos, cuatro, 750, 170, 1, 1, 0, c_white, 1);

	actual = tres * cuatro;
}

if(numOperacion == 8){
	
	if(rand){
		resultado = tres * cero;
	
		resultado_m_1 = floor(random_range(0,9));
		resultado_m_2 = floor(random_range(0,9));
		rand=false;
	}		

	draw_sprite_ext(MSR, 0, 500, 70, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numerosNaranjos, tres, 550, 170, 1, 1, 0, c_white, 1);
	draw_sprite_ext(sprite_X, 0, 400, 60, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numerosNaranjos, cero, 750, 170, 1, 1, 0, c_white, 1);

	actual = tres * cero;
}

if(numOperacion == 9){
	
	if(rand){
		resultado = cuatro * dos;
	
		resultado_m_1 = floor(random_range(0,9));
		resultado_m_2 = floor(random_range(0,9));
		rand=false;
	}		

	draw_sprite_ext(MSR, 0, 500, 70, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numerosNaranjos, cuatro, 550, 170, 1, 1, 0, c_white, 1);
	draw_sprite_ext(sprite_X, 0, 400, 60, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numerosNaranjos, dos, 750, 170, 1, 1, 0, c_white, 1);
	
	actual = cuatro * dos;
}

if(numOperacion == 10){
	
	if(rand){
		resultado = cuatro * siete;
	
		resultado_m_1 = floor(random_range(0,9));
		resultado_m_2 = floor(random_range(0,9));
		rand=false;
	}		

	draw_sprite_ext(MSR, 0, 500, 70, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numerosNaranjos, cuatro, 550, 170, 1, 1, 0, c_white, 1);
	draw_sprite_ext(sprite_X, 0, 400, 60, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numerosNaranjos, siete, 750, 170, 1, 1, 0, c_white, 1);
	
	actual = cuatro * siete;
}

if(numOperacion == 11){
	
	if(rand){
		resultado = cinco * seis;
	
		resultado_m_1 = floor(random_range(0,9));
		resultado_m_2 = floor(random_range(0,9));
		rand=false;
	}
	
	draw_sprite_ext(MSR, 0, 500, 70, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numerosNaranjos, cinco, 550, 170, 1, 1, 0, c_white, 1);
	draw_sprite_ext(sprite_X, 0, 400, 60, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numerosNaranjos, seis, 750, 170, 1, 1, 0, c_white, 1);	
	
	actual = cinco * seis;
}

if(numOperacion == 12){
	
	if(rand){
		resultado = cinco * nueve;
	
		resultado_m_1 = floor(random_range(0,9));
		resultado_m_2 = floor(random_range(0,9));
		rand=false;
	}		

	draw_sprite_ext(MSR, 0, 500, 70, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numerosNaranjos, cinco, 550, 170, 1, 1, 0, c_white, 1);
	draw_sprite_ext(sprite_X, 0, 400, 60, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numerosNaranjos, nueve, 750, 170, 1, 1, 0, c_white, 1);	
	
	actual = cinco * nueve;
}

if(numOperacion == 13){
	
	if(rand){
		resultado = seis * cuatro;
	
		resultado_m_1 = floor(random_range(0,9));
		resultado_m_2 = floor(random_range(0,9));
		rand=false;
	}		

	draw_sprite_ext(MSR, 0, 500, 70, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numerosNaranjos, seis, 550, 170, 1, 1, 0, c_white, 1);
	draw_sprite_ext(sprite_X, 0, 400, 60, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numerosNaranjos, cuatro, 750, 170, 1, 1, 0, c_white, 1);	
	
	actual = seis * cuatro;
}

if(numOperacion == 14){
	
	if(rand){
		resultado = seis * uno;
	
		resultado_m_1 = floor(random_range(0,9));
		resultado_m_2 = floor(random_range(0,9));
		rand=false;
	}
	
	draw_sprite_ext(MSR, 0, 500, 70, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numerosNaranjos, seis, 550, 170, 1, 1, 0, c_white, 1);
	draw_sprite_ext(sprite_X, 0, 400, 60, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numerosNaranjos, uno, 750, 170, 1, 1, 0, c_white, 1);
	
	actual = seis * uno;
}

if(numOperacion == 15){
	
	if(rand){
		resultado = siete * dos;
	
		resultado_m_1 = floor(random_range(0,9));
		resultado_m_2 = floor(random_range(0,9));
		rand=false;
	}
	
	draw_sprite_ext(MSR, 0, 500, 70, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numerosNaranjos, siete, 550, 170, 1, 1, 0, c_white, 1);
	draw_sprite_ext(sprite_X, 0, 400, 60, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numerosNaranjos, dos, 750, 170, 1, 1, 0, c_white, 1);
	
	actual = siete * dos;
}

if(numOperacion == 16){
	
	if(rand){
		resultado = siete * cinco;
	
		resultado_m_1 = floor(random_range(0,9));
		resultado_m_2 = floor(random_range(0,9));
		rand=false;
	}
	
	draw_sprite_ext(MSR, 0, 500, 70, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numerosNaranjos, siete, 550, 170, 1, 1, 0, c_white, 1);
	draw_sprite_ext(sprite_X, 0, 400, 60, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numerosNaranjos, cinco, 750, 170, 1, 1, 0, c_white, 1);
	
	actual = siete * cinco;
}

if(numOperacion == 17){
	
	if(rand){
		resultado = ocho * tres;
	
		resultado_m_1 = floor(random_range(0,9));
		resultado_m_2 = floor(random_range(0,9));
		rand=false;
	}
	
	draw_sprite_ext(MSR, 0, 500, 70, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numerosNaranjos, ocho, 550, 170, 1, 1, 0, c_white, 1);
	draw_sprite_ext(sprite_X, 0, 400, 60, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numerosNaranjos, tres, 750, 170, 1, 1, 0, c_white, 1);
	
	actual = ocho * tres;
}
if(numOperacion == 18){
	
	if(rand){
		resultado = ocho * siete;
	
		resultado_m_1 = floor(random_range(0,9));
		resultado_m_2 = floor(random_range(0,9));
		rand=false;
	}
	
	draw_sprite_ext(MSR, 0, 500, 70, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numerosNaranjos, ocho, 550, 170, 1, 1, 0, c_white, 1);
	draw_sprite_ext(sprite_X, 0, 400, 60, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numerosNaranjos, siete, 750, 170, 1, 1, 0, c_white, 1);
	
	actual = ocho * siete;
}
if(numOperacion == 19){
	
	if(rand){
		resultado = nueve * cero;
	
		resultado_m_1 = floor(random_range(0,9));
		resultado_m_2 = floor(random_range(0,9));
		rand=false;
	}
	
	draw_sprite_ext(MSR, 0, 500, 70, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numerosNaranjos, nueve, 550, 170, 1, 1, 0, c_white, 1);
	draw_sprite_ext(sprite_X, 0, 400, 60, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numerosNaranjos, cero, 750, 170, 1, 1, 0, c_white, 1);
	
	actual = nueve * cero;
}
if(numOperacion == 20){
	
	if(rand){
		resultado = nueve * siete;
	
		resultado_m_1 = floor(random_range(0,9));
		resultado_m_2 = floor(random_range(0,9));
		rand=false;
	}		


	draw_sprite_ext(MSR, 0, 500, 70, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numerosNaranjos, nueve, 550, 170, 1, 1, 0, c_white, 1);
	draw_sprite_ext(sprite_X, 0, 400, 60, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numerosNaranjos, siete, 750, 170, 1, 1, 0, c_white, 1);
	
	actual = nueve * siete;
}


//CAMBIA DE EJERCICIO


if(estadoOperacion = false and numOperacion < 20)
{
	estadoOperacion = true;
	numOperacion++;
	//obj_puntero.etapa++;
	enemBueno = floor(random_range(1,4));
	
} 

if(numOperacion == 20 and final == 1){
	
	ini_open("datos.ini")
	
	if(contador_cero == 0 )ini_write_real("dificil","cero",1)
	if(contador_cero == 1 )ini_write_real("medio","cero",1)
	if(contador_cero == 2 )ini_write_real("facil","cero",1)
	if(contador_uno == 0 )ini_write_real("dificil","uno",1)
	if(contador_uno == 1 )ini_write_real("medio","uno",1)
	if(contador_uno == 2 )ini_write_real("facil","uno",1)
	if(contador_dos == 0 )ini_write_real("dificil","dos",1)
	if(contador_dos == 1 )ini_write_real("medio","dos",1)
	if(contador_dos == 2 )ini_write_real("facil","dos",1)
	if(contador_tres == 0 )ini_write_real("dificil","tres",1)
	if(contador_tres == 1 )ini_write_real("medio","tres",1)
	if(contador_tres == 2 )ini_write_real("facil","tres",1)
	if(contador_cuatro == 0 )ini_write_real("dificil","cuatro",1)
	if(contador_cuatro == 1 )ini_write_real("medio","cuatro",1)
	if(contador_cuatro == 2 )ini_write_real("facil","cuatro",1)
	if(contador_cinco == 0 )ini_write_real("dificil","cinco",1)
	if(contador_cinco == 1 )ini_write_real("medio","cinco",1)
	if(contador_cinco == 2 )ini_write_real("facil","cinco",1)
	if(contador_seis == 0 )ini_write_real("dificil","seis",1)
	if(contador_seis == 1 )ini_write_real("medio","seis",1)
	if(contador_seis == 2 )ini_write_real("facil","seis",1)
	if(contador_siete == 0 )ini_write_real("dificil","siete",1)
	if(contador_siete == 1 )ini_write_real("medio","siete",1)
	if(contador_siete == 2 )ini_write_real("facil","siete",1)
	if(contador_ocho == 0 )ini_write_real("dificil","ocho",1)
	if(contador_ocho == 1 )ini_write_real("medio","ocho",1)
	if(contador_ocho == 2 )ini_write_real("facil","ocho",1)
	if(contador_nueve == 0 )ini_write_real("dificil","nueve",1)
	if(contador_nueve == 1 )ini_write_real("medio","nueve",1)
	if(contador_nueve == 2 )ini_write_real("facil","nueve",1)
	
	ini_close();
	
	
	room_goto(room_zombie);
	
}