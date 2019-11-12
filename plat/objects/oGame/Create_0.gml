#macro RES_W 1280
#macro RES_H 720

//global.vidas = 3;
puntajetextscale = 0;
vidatextscale = 0;
global.haskey = 0;
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
global.a = irandom_range(global.minA,global.maxB);	
global.b = irandom_range(global.minA,global.maxB);	
global.r = global.a * global.b;
global.respuesta = 0;
global.origen = "Random";

global.etapa = 1;
global.numEjercicios = 1;

//BONUS
global.escudo = global.pEscudo;
global.poder = global.pEscudo + global.pPoder;
global.puntos = global.pEscudo + global.pPoder + global.pPuntos;
global.multiplicador = global.pEscudo + global.pPoder + global.pPuntos + global.pMultiplicador;
global.slowMo = global.pEscudo + global.pPoder + global.pPuntos + global.pMultiplicador + global.pSlowmo;
global.bonusActivo = 0;
global.valorMultiplicador = 1;


killtextscale = 1;
