#macro RES_W 1280
#macro RES_H 720

global.hasgun = 0;
global.kills = 0;
global.killsthisroom = 0;
global.puntaje = 0;
global.puntajethisroom = 0;
global.buenas = 0;
global.malas = 0;
global.intentos = 0;
randomize();
global.respuestaCorrecta = irandom_range(1,3);

global.operacion = "x";
global.respondida = false;
global.mostrarEjercicio = true;
global.buena = true;
global.a = irandom_range(2,9);	
global.b = irandom_range(2,9);	
global.r = global.a * global.b;
global.respuesta = 0;
global.origen = "Random";

global.etapa = 1;
global.numEjercicios = 1;

//BONUS
global.escudo = 0.2;
global.poder = 0.4;
global.puntos = 0.6;
global.multiplicador = 0.8;
global.slowMo = 1.0;
global.bonusActivo = 0;
global.valorMultiplicador = 1;


killtextscale = 1;
