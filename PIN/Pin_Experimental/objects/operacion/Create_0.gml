/// @description Insert description here
// You can write your code in this editor
num1 = 0;
num2 = 0;
den1 = 0;
den2 = 0;

rand = true;
sor	 = 0;
enemBueno = 0;
varscore="Puntaje";
varscoremax="Max Puntaje";
estadoOperacion = true;
numOperacion = 1;
Puntaje=0;
num1xden2=0;
num1xden2 = 0;
num2xden1 = 0;
numResult = 0;
denResult = 0;
result = 0;
actual = 0;

largo = 0;
facil[0] = 0;

largo_m = 0;
medio[0] = 0;

largo_d = 0;
dificil[0] = 0;

contador_G = 0;

contador_M = 0;
var i;
if(global.sizeF>0){
	for(i=0;i<global.sizeF;i++){
		if(global.faciles[i]==0){facil[largo]=0; largo++;}
		if(global.faciles[i]==1){facil[largo]=1; largo++;}
		if(global.faciles[i]==2){facil[largo]=2; largo++;}
		if(global.faciles[i]==3){facil[largo]=3; largo++;}
		if(global.faciles[i]==4){facil[largo]=4; largo++;}
		if(global.faciles[i]==5){facil[largo]=5; largo++;}
		if(global.faciles[i]==6){facil[largo]=6; largo++;}
		if(global.faciles[i]==7){facil[largo]=7; largo++;}
		if(global.faciles[i]==8){facil[largo]=8; largo++;}
		if(global.faciles[i]==9){facil[largo]=9; largo++;}
	}
}
if(global.sizeM>0){
	for(i=0;i<global.sizeM;i++){
		if(global.medios[i]==0){medio[largo_m]=0; largo_m++;}
		if(global.medios[i]==1){medio[largo_m]=1; largo_m++;}
		if(global.medios[i]==2){medio[largo_m]=2; largo_m++;}
		if(global.medios[i]==3){medio[largo_m]=3; largo_m++;}
		if(global.medios[i]==4){medio[largo_m]=4; largo_m++;}
		if(global.medios[i]==5){medio[largo_m]=5; largo_m++;}
		if(global.medios[i]==6){medio[largo_m]=6; largo_m++;}
		if(global.medios[i]==7){medio[largo_m]=7; largo_m++;}
		if(global.medios[i]==8){medio[largo_m]=8; largo_m++;}
		if(global.medios[i]==9){medio[largo_m]=9; largo_m++;}
	}
}
if(global.sizeD>0){
	for(i=0;i<global.sizeD;i++){
		if(global.dificiles[i]==0){dificil[largo_d]=0; largo_d++;}
		if(global.dificiles[i]==1){dificil[largo_d]=1; largo_d++;}
		if(global.dificiles[i]==2){dificil[largo_d]=2; largo_d++;}
		if(global.dificiles[i]==3){dificil[largo_d]=3; largo_d++;}
		if(global.dificiles[i]==4){dificil[largo_d]=4; largo_d++;}
		if(global.dificiles[i]==5){dificil[largo_d]=5; largo_d++;}
		if(global.dificiles[i]==6){dificil[largo_d]=6; largo_d++;}
		if(global.dificiles[i]==7){dificil[largo_d]=7; largo_d++;}
		if(global.dificiles[i]==8){dificil[largo_d]=8; largo_d++;}
		if(global.dificiles[i]==9){dificil[largo_d]=9; largo_d++;}
	}
}
/*
ini_open("datos.ini")

	cero = ini_read_real("facil","cero",0)
	if(cero == 1 ){
			facil[largo]= 0;
			largo++;
		}
	uno = ini_read_real("facil","uno",0)
	if(uno == 1 ){
			facil[largo]= 1;
			largo++;
		}
	dos = ini_read_real("facil","dos",0)
	if(dos == 1 ){
			facil[largo]= 2;
			largo++;
		}
	tres = ini_read_real("facil","tres",0)
	if(tres == 1 ){
			facil[largo]= 3;
			largo++;
		}
	cuatro = ini_read_real("facil","cuatro",0)
	if(cuatro == 1 ){
			facil[largo]= 4;
			largo++;
		}
	cinco = ini_read_real("facil","cinco",0)
	if(cinco == 1 ){
			facil[largo]= 5;
			largo++;
		}
	seis = ini_read_real("facil","seis",0)
	if(seis == 1 ){
			facil[largo]= 6;
			largo++;
		}
	siete = ini_read_real("facil","siete",0)
	if(siete == 1 ){
			facil[largo]= 7;
			largo++;
		}
	ocho = ini_read_real("facil","ocho",0)
	if(ocho == 1 ){
			facil[largo]= 8;
			largo++;
		}
	nueve = ini_read_real("facil","nueve",0)
	if(nueve == 1 ){
			facil[largo]= 9;
			largo++;
		}
		
//CARGAR DATOS MEDIOS

	cero = ini_read_real("medio","cero",0)
	if(cero == 1 ){
			medio[largo_m]= 0;
			largo_m++;
		}
	uno = ini_read_real("medio","uno",0)
	if(uno == 1 ){
			medio[largo_m]= 1;
			largo_m++;
		}
	dos = ini_read_real("medio","dos",0)
	if(dos == 1 ){
			medio[largo_m]= 2;
			largo_m++;
		}
	tres = ini_read_real("medio","tres",0)
	if(tres == 1 ){
			medio[largo_m]= 3;
			largo_m++;
		}
	cuatro = ini_read_real("medio","cuatro",0)
	if(cuatro == 1 ){
			medio[largo_m]= 4;
			largo_m++;
		}
	cinco = ini_read_real("medio","cinco",0)
	if(cinco == 1 ){
			medio[largo_m]= 5;
			largo_m++;
		}
	seis = ini_read_real("medio","seis",0)
	if(seis == 1 ){
			medio[largo_m]= 6;
			largo_m++;
		}
	siete = ini_read_real("medio","siete",0)
	if(siete == 1 ){
			medio[largo_m]= 7;
			largo_m++;
		}
	ocho = ini_read_real("medio","ocho",0)
	if(ocho == 1 ){
			medio[largo_m]= 8;
			largo_m++;
		}
	nueve = ini_read_real("medio","nueve",0)
	if(nueve == 1 ){
			medio[largo_m]= 9;
			largo_m++;
		}
		
	//CARGAR DATOS DIFICIL
	
	cero = ini_read_real("dificil","cero",0)
	if(cero == 1 ){
			dificil[largo_d]= 0;
			largo_d++;
		}
	uno = ini_read_real("dificil","uno",0)
	if(uno == 1 ){
			dificil[largo_d]= 1;
			largo_d++;
		}
	dos = ini_read_real("dificil","dos",0)
	if(dos == 1 ){
			dificil[largo_d]= 2;
			largo_d++;
		}
	tres = ini_read_real("dificil","tres",0)
	if(tres == 1 ){
			dificil[largo_d]= 3;
			largo_d++;
		}
	cuatro = ini_read_real("dificil","cuatro",0)
	if(cuatro == 1 ){
			dificil[largo_d]= 4;
			largo_d++;
		}
	cinco = ini_read_real("dificil","cinco",0)
	if(cinco == 1 ){
			dificil[largo_d]= 5;
			largo_d++;
		}
	seis = ini_read_real("dificil","seis",0)
	if(seis == 1 ){
			dificil[largo_d]= 6;
			largo_d++;
		}
	siete = ini_read_real("dificil","siete",0)
	if(siete == 1 ){
			dificil[largo_d]= 7;
			largo_d++;
		}
	ocho = ini_read_real("dificil","ocho",0)
	if(ocho == 1 ){
			dificil[largo_d]= 8;
			largo_d++;
		}
	nueve = ini_read_real("dificil","nueve",0)
	if(nueve == 1 ){
			dificil[largo_d]= 9;
			largo_d++;
		}
	
*/


	a_facil = 0;

	a_medio = 0;

	a_dificil = 0;

	if(largo > 0){
		a_facil = 1;
	}else if(largo_m > 0){

		a_medio = 1;
	}else if(largo_d > 0){
	
		a_dificil = 1;
	}
	
	

//ini_close();

if(largo == 0 and largo_m == 0 and largo_d == 0){

	room_goto(room_experimental);
}
