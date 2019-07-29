/// @description Insert description here
// You can write your code in this editor
draw_set_font(font1)

if(rand)
{
	
	//SE DEBE LEER LOS DATOS DESDE EL INI
	
	num1 = floor(random_range(0,10));
	num2 = floor(random_range(0,10));
	den1 = floor(random_range(1,10));
	den2 = floor(random_range(1,10));
	
	//SUBIR DE NIVEL CON 5 RESPUESTAS CORRECTAS
	
	if(contador_G == 8 ){
			
		contador_G = 0;
			if(a_facil == 1){

				if(largo_m > 0){
					
					a_facil = 0;
					a_medio = 1;
					a_dificil = 0;
				}else if(largo_d > 0){
					
					a_facil = 0;
					a_medio = 0;
					a_dificil = 1;
				}
				
			}else if (a_medio == 1){
				
				if(largo_d > 0){
	
					a_facil = 0;
					a_medio = 0;
					a_dificil = 1;
				}
			}else if(a_dificil == 1){
				
				contador_G = 0;
				a_facil = 0;
				a_medio = 0;
				a_dificil = 1;
			
			}
		
		}
	//BAJAR DE NIVEL CON 2 MALAS CONSECUTIVAS.
		
	if(contador_M == 1 ){
			
			contador_M = 0;
			if(a_facil == 1){
				
				
				a_facil = 1;
				a_medio = 0;
				a_dificil = 0;
			}else if(a_medio == 1){
				
				if(largo > 0){
	
					a_facil = 1;
					a_medio = 0;
					a_dificil = 0;
				}
			}else if(a_dificil == 1){
				
				if(largo_m > 0){
					
					a_facil = 0;
					a_medio = 1;
					a_dificil = 0;
				}else if(largo > 0){
					
					a_facil = 1;
					a_medio = 0;
					a_dificil = 0;
				}
			
			}
		}
	
	//Operacion entre puntaje 0 a 150 facil... si largo es menor que 0 significa que no tiene faciles.
	if(largo > 0 and a_facil == 1){
		
		while(num1 >= largo){
		
			num1 = floor(random_range(0,10));
		}
		while(num2 >= largo){
		
			num2 = floor(random_range(0,10));
		}
		if(num1 < largo and num2 < largo){
		
			num1 = facil[num1];
			num2 = facil[num2];
		}
	}else{
		if(largo_m > 0 and a_medio == 1){
				
			while(num1 >= largo_m ){
				num1 = floor(random_range(0,10));
			}
			while(num2 >= largo_m){
				num2 = floor(random_range(0,10));
			}
			if(num1 < largo_m and num2 < largo_m){
		
				num1 = medio[num1];
				num2 = medio[num2];
			}
		}else{
			if(largo_d > 0 and a_dificil == 1){
				
				while(num1 >= largo_d ){
					num1 = floor(random_range(0,10));
				}
				while(num2 >= largo_d){
					num2 = floor(random_range(0,10));
				}
				if(num1 < largo_d and num2 < largo_d){
					
					num1 = dificil[num1];
					num2 = dificil[num2];
				}
			}
		
		}
	}
	/*
	//Operacion entre puntaje 150 a 350 medio... si largo_m es menor que 0 significa que no tiene medio.
	if(largo_m > 0 and Puntaje < 350 and Puntaje > 150 and a_medio == 1){
		
		a_facil = 0;
		a_medio = 1;
		a_dificil = 0;
		
		while(num1 >= largo_m){
		
			num1 = floor(random_range(0,10));
		}
		while(num2 >= largo_m){
		
			num2 = floor(random_range(0,10));
		}
		if(num1 < largo_m and num2 < largo_m){
		
			num1 = medio[num1];
			num2 = medio[num2];
		}
	}else{
		if(largo_d > 0 and Puntaje < 350 and Puntaje > 150 and a_dificil == 1 ){
			
			a_facil = 0;
			a_medio = 0;
			a_dificil = 1;
			
				while(num1 >= largo_d){
					num1 = floor(random_range(0,10));
				}
				while(num2 >= largo_d){
					num2 = floor(random_range(0,10));
				}
				if(num1 < largo_d and num2 < largo_d){
					
					num1 = dificil[num1];
					num2 = dificil[num2];
				}
			}else{
			if(largo > 0 and Puntaje < 350 and Puntaje > 150 and a_facil == 1 ){
				
				a_facil = 1;
				a_medio = 0;
				a_dificil = 0;
				
				while(num1 >= largo){
					num1 = floor(random_range(0,10));
				}
				while(num2 >= largo ){
					num2 = floor(random_range(0,10));
				}
				
				if(num1 < largo and num2 < largo){
		
					num1 = facil[num1];
					num2 = facil[num2];
				}
			}
		
		}
	}
	
	//Operacion entre puntaje 350 a 800 medio... si largo_m es menor que 0 significa que no tiene medio.
	if(largo_d > 0 and Puntaje < 800 and Puntaje > 350 and a_dificil == 1){
		while(num1 > largo_d and num2 > largo_d){
		
			num1 = floor(random_range(1,10));
			num2 = floor(random_range(0,10));
		}
		if(num1 < largo_d and num2 < largo_d){
		
			num1 = dificil[num1];
			num2 = dificil[num2];
		}
	}else{
		if(largo_m > 0 and Puntaje < 800 and Puntaje > 350 and a_medio == 1){
				while(num1 > largo_m and num2 > largo_m){
					num1 = floor(random_range(1,10));
					num2 = floor(random_range(0,10));
				}
				if(num1 < largo_m and num2 < largo_m){
					
					num1 = medio[num1];
					num2 = medio[num2];
				}
			}else{
			if(largo > 0 and Puntaje < 800 and Puntaje > 350 and a_facil == 1){
				while(num1 > largo and num2 > largo ){
		
					num1 = floor(random_range(1,10));
					num2 = floor(random_range(0,10));
				}
				if(num1 < largo and num2 < largo){
		
					num1 = facil[num1];
					num2 = facil[num2];
				}
			}
		
		}
	}
	*/
	
	
	sor	 = floor(random_range(0,2));
	enemBueno = floor(random_range(1,4));
	while(den1 = den2)
	{
		den2 = floor(random_range(1,10));
	}
	rand = false;
	num1xden2 = num1 * den2;
	num2xden1 = num2 * den1;
	while(num1xden2 - num2xden1 < 0)
	{
		den1 = floor(random_range(1,10));
		num2 = floor(random_range(0,10));
		num2xden1 = num2 * den1;
	}
}
if(numOperacion = 5) numOperacion = 1;
/*
if(sor == 0) draw_sprite_ext(sumaoresta, 0, 190, 125, 1, 1, 0, c_white, 1);
else draw_sprite_ext(sumaoresta, 1, 190, 125, 1, 1, 0, c_white, 1);*/



draw_text(1065, 67, string(varscore));
draw_text(1185, 67, string(Puntaje));
//draw_text(1065, 87, string(varscoremax));
//draw_text(1185, 87, string(vidas.smax));
//draw_text(1065, 110, string("Juegos"));
//draw_text(1185, 110, string(vidas.VecesJugadas));


if(numOperacion > 1) 
{
	if(num1xden2<10) draw_sprite_ext(numeros, num1xden2, 420, 35, 1, 1, 0, c_white, 1);
	else
	{
		primero = num1xden2 div 10;
		segundo = num1xden2 mod 10;
		draw_sprite_ext(numeros, primero, 395, 32, 1, 1, 0, c_white, 1);
		draw_sprite_ext(numeros, segundo, 445, 32, 1, 1, 0, c_white, 1);
	}
}
if(numOperacion > 2)
{
	if(num2xden1 < 10) draw_sprite_ext(numeros, num2xden1, 590, 32, 1, 1, 0, c_white, 1);
	else
	{
		primero = num2xden1 div 10;
		segundo = num2xden1 mod 10;
		draw_sprite_ext(numeros, primero, 565, 32, 1, 1, 0, c_white, 1);
		draw_sprite_ext(numeros, segundo, 615, 32, 1, 1, 0, c_white, 1);
	}
}
if(numOperacion > 3) 
{
	if(den1 * den2 < 10) 
	{
		draw_sprite_ext(numeros, den1 * den2, 765, 190, 1, 1, 0, c_white, 1);
		draw_sprite_ext(numeros, den1 * den2, 495, 225, 1, 1, 0, c_white, 1);
	}
	else
	{
		primero = den1 * den2 div 10;
		segundo = den1 * den2 mod 10;
		draw_sprite_ext(numeros, primero, 470, 225, 1, 1, 0, c_white, 1);
		draw_sprite_ext(numeros, segundo, 520, 225, 1, 1, 0, c_white, 1);
		draw_sprite_ext(numeros, primero, 740, 190, 1, 1, 0, c_white, 1);
		draw_sprite_ext(numeros, segundo, 790, 190, 1, 1, 0, c_white, 1);
	}
	draw_sprite_ext(sumaoresta, 0, 700, 150, 1, 1, 0, c_white, 1);
	draw_sprite_ext(sumaoresta, 0, 730, 150, 1, 1, 0, c_white, 1);
	draw_sprite_ext(sumaoresta, 0, 760, 150, 1, 1, 0, c_white, 1);
	draw_sprite_ext(sumaoresta, 0, 790, 150, 1, 1, 0, c_white, 1);
	draw_sprite_ext(sumaoresta, 0, 810, 150, 1, 1, 0, c_white, 1);
	draw_sprite_ext(sumaoresta, 0, 830, 150, 1, 1, 0, c_white, 1);
	draw_sprite_ext(sumaoresta, 0, 860, 150, 1, 1, 0, c_white, 1);

}

if(numOperacion = 1) 
{
	draw_sprite_ext(numerosNaranjos, num1, 430, 95, 1, 1, 0, c_white, 1);
	//draw_sprite_ext(numeros, num1, 120, 85, 1, 1, 0, c_white, 1);

	draw_sprite_ext(numeros, den1, 425, 180, 1, 1, 0, c_white, 1);
	//draw_sprite_ext(numeros, den1, 120, 165, 1, 1, 0, c_white, 1);

	draw_sprite_ext(numeros, num2, 585, 95, 1, 1, 0, c_white, 1);
	//draw_sprite_ext(numeros, num2, 265, 85, 1, 1, 0, c_white, 1);

	draw_sprite_ext(numerosNaranjos, den2, 580, 175, 1, 1, 0, c_white, 1);
	//draw_sprite_ext(numeros, den2, 265, 165, 1, 1, 0, c_white, 1);
	
	
	actual = num1xden2;
	draw_sprite_ext(numerosNaranjos, num1, 460, 685, 1, 1, 0, c_white, 1);
	//draw_sprite_ext(operacion_y, image_index, 630, 740, 1, 1, 0, c_white, 1);
	draw_text(530, 680, string("Y"));
	draw_sprite_ext(numerosNaranjos, den2, 600, 685, 1, 1, 0, c_white, 1);
}
if(numOperacion = 2) 
{
	draw_sprite_ext(numeros, num1, 430, 95, 1, 1, 0, c_white, 1);
	//draw_sprite_ext(numeros, num1, 120, 85, 1, 1, 0, c_white, 1);

	draw_sprite_ext(numerosNaranjos, den1, 425, 180, 1, 1, 0, c_white, 1);
	//draw_sprite_ext(numeros, den1, 120, 165, 1, 1, 0, c_white, 1);

	draw_sprite_ext(numerosNaranjos, num2, 585, 95, 1, 1, 0, c_white, 1);
	//draw_sprite_ext(numeros, num2, 265, 85, 1, 1, 0, c_white, 1);

	draw_sprite_ext(numeros, den2, 580, 175, 1, 1, 0, c_white, 1);
	//draw_sprite_ext(numeros, den2, 265, 165, 1, 1, 0, c_white, 1);
	
	
	actual = num2xden1;
	draw_sprite_ext(numerosNaranjos, den1, 460, 685, 1, 1, 0, c_white, 1);
	draw_text(530, 680, string("Y"));
	draw_sprite_ext(numerosNaranjos, num2, 600, 685, 1, 1, 0, c_white, 1);
}
if(numOperacion = 3) 
{
	
	draw_sprite_ext(numeros, num1, 430, 95, 1, 1, 0, c_white, 1);
	//draw_sprite_ext(numeros, num1, 120, 85, 1, 1, 0, c_white, 1);

	draw_sprite_ext(numerosNaranjos, den1, 425, 180, 1, 1, 0, c_white, 1);
	//draw_sprite_ext(numeros, den1, 120, 165, 1, 1, 0, c_white, 1);

	draw_sprite_ext(numeros, num2, 585, 95, 1, 1, 0, c_white, 1);
	//draw_sprite_ext(numeros, num2, 265, 85, 1, 1, 0, c_white, 1);

	draw_sprite_ext(numerosNaranjos, den2, 580, 175, 1, 1, 0, c_white, 1);
	//draw_sprite_ext(numeros, den2, 265, 165, 1, 1, 0, c_white, 1);
	
	
	actual = den1 * den2;
	draw_sprite_ext(numerosNaranjos, den1, 460, 685, 1, 1, 0, c_white, 1);
	draw_text(530, 680, string("Y"));
	draw_sprite_ext(numerosNaranjos, den2, 600, 685, 1, 1, 0, c_white, 1);
}
if(numOperacion = 4) 
{
	draw_sprite_ext(numeros, num1, 430, 95, 1, 1, 0, c_white, 1);
	//draw_sprite_ext(numeros, num1, 120, 85, 1, 1, 0, c_white, 1);

	draw_sprite_ext(numeros, den1, 425, 180, 1, 1, 0, c_white, 1);
	//draw_sprite_ext(numeros, den1, 120, 165, 1, 1, 0, c_white, 1);

	draw_sprite_ext(numeros, num2, 585, 95, 1, 1, 0, c_white, 1);
	//draw_sprite_ext(numeros, num2, 265, 85, 1, 1, 0, c_white, 1);

	draw_sprite_ext(numeros, den2, 580, 175, 1, 1, 0, c_white, 1);
	//draw_sprite_ext(numeros, den2, 265, 165, 1, 1, 0, c_white, 1);
	
	
	if(num1xden2 < 10) draw_sprite_ext(numerosNaranjos, num1xden2, 460, 685, 1, 1, 0, c_white, 1);
	else
	{
		primero = num1xden2 div 10;
		segundo = num1xden2 mod 10;
		draw_sprite_ext(numerosNaranjos, primero, 460, 685, 1, 1, 0, c_white, 1);
		draw_sprite_ext(numerosNaranjos, segundo, 510, 685, 1, 1, 0, c_white, 1);
	}
	draw_text(550, 680, string("y"));
	if(num2xden1 < 10) draw_sprite_ext(numerosNaranjos, num2xden1, 680, 685, 1, 1, 0, c_white, 1);
	else
	{
		primero = num2xden1 div 10;
		segundo = num2xden1 mod 10;
		draw_sprite_ext(numerosNaranjos, primero, 620, 685, 1, 1, 0, c_white, 1);
		draw_sprite_ext(numerosNaranjos, segundo, 670, 685, 1, 1, 0, c_white, 1);
	}
}

if(numOperacion = 4 and sor = 0) 
{
	draw_sprite_ext(numeros, num1, 430, 95, 1, 1, 0, c_white, 1);
	//draw_sprite_ext(numeros, num1, 120, 85, 1, 1, 0, c_white, 1);

	draw_sprite_ext(numeros, den1, 425, 180, 1, 1, 0, c_white, 1);
	//draw_sprite_ext(numeros, den1, 120, 165, 1, 1, 0, c_white, 1);

	draw_sprite_ext(numeros, num2, 585, 95, 1, 1, 0, c_white, 1);
	//draw_sprite_ext(numeros, num2, 265, 85, 1, 1, 0, c_white, 1);

	draw_sprite_ext(numeros, den2, 580, 175, 1, 1, 0, c_white, 1);
	//draw_sprite_ext(numeros, den2, 265, 165, 1, 1, 0, c_white, 1);
	
	
	actual = num1xden2 - num2xden1;
	if(num1xden2 < 10) draw_sprite_ext(numerosNaranjos, num1xden2, 720, 110, 1, 1, 0, c_white, 1);
	else
	{
		primero = num1xden2 div 10;
		segundo = num1xden2 mod 10;
		draw_sprite_ext(numerosNaranjos, primero, 695, 110, 1, 1, 0, c_white, 1);
		draw_sprite_ext(numerosNaranjos, segundo, 745, 110, 1, 1, 0, c_white, 1);
	}
	draw_sprite_ext(sumaoresta, 0, 800, 110, 1, 1, 0, c_white, 0.9);
	if(num2xden1 < 10) draw_sprite_ext(numerosNaranjos, num2xden1, 855, 110, 1, 1, 0, c_white, 1);
	else
	{
		primero = num2xden1 div 10;
		segundo = num2xden1 mod 10;
		draw_sprite_ext(numerosNaranjos, primero, 855, 110, 1, 1, 0, c_white, 1);
		draw_sprite_ext(numerosNaranjos, segundo, 905, 110, 1, 1, 0, c_white, 1);
	}
}

if(numOperacion = 4 and sor = 1) 
{
	draw_sprite_ext(numeros, num1, 430, 95, 1, 1, 0, c_white, 1);
	//draw_sprite_ext(numeros, num1, 120, 85, 1, 1, 0, c_white, 1);

	draw_sprite_ext(numeros, den1, 425, 180, 1, 1, 0, c_white, 1);
	//draw_sprite_ext(numeros, den1, 120, 165, 1, 1, 0, c_white, 1);

	draw_sprite_ext(numeros, num2, 585, 95, 1, 1, 0, c_white, 1);
	//draw_sprite_ext(numeros, num2, 265, 85, 1, 1, 0, c_white, 1);

	draw_sprite_ext(numeros, den2, 580, 175, 1, 1, 0, c_white, 1);
	//draw_sprite_ext(numeros, den2, 265, 165, 1, 1, 0, c_white, 1);
	
	
	
	actual = num1xden2 + num2xden1;
	if(num1xden2 < 10) draw_sprite_ext(numerosNaranjos, num1xden2, 720, 110, 1, 1, 0, c_white, 1);
	else
	{
		primero = num1xden2 div 10;
		segundo = num1xden2 mod 10;
		draw_sprite_ext(numerosNaranjos, primero, 695, 110, 1, 1, 0, c_white, 1);
		draw_sprite_ext(numerosNaranjos, segundo, 745, 110, 1, 1, 0, c_white, 1);
	}
	draw_sprite_ext(sumaoresta, 1, 800, 110, 1, 1, 0, c_white, 1);
	if(num2xden1 < 10) draw_sprite_ext(numerosNaranjos, num2xden1, 855, 110, 1, 1, 0, c_white, 1);
	else
	{
		primero = num2xden1 div 10;
		segundo = num2xden1 mod 10;
		draw_sprite_ext(numerosNaranjos, primero, 855, 110, 1, 1, 0, c_white, 1);
		draw_sprite_ext(numerosNaranjos, segundo, 905, 110, 1, 1, 0, c_white, 1);
	}
}

if(estadoOperacion = false and numOperacion = 1)
{
	estadoOperacion = true;
	numOperacion++;
	obj_puntero.etapa++;
	enemBueno = floor(random_range(1,4));
} 

if(estadoOperacion = false and numOperacion = 2)
{
	estadoOperacion = true;
	numOperacion++;
	obj_puntero.etapa++;
	enemBueno = floor(random_range(1,4));

} 

if(estadoOperacion = false and numOperacion = 3)
{
	estadoOperacion = true;
	numOperacion++;
	obj_puntero.etapa++;
	enemBueno = floor(random_range(1,4));

} 

if(estadoOperacion = false and numOperacion = 4)
{
	draw_text(480, 210, string(actual));
	estadoOperacion = true;
	numOperacion++;
	obj_puntero.etapa++;
	rand = true;
	enemigo.numVX -= 0.3;
	enemigo2.numVX -= 0.3;
	enemigo3.numVX -= 0.3;
	jugador.retraso -= 5;
	jugador.velocidad += 0.3;
	
} 