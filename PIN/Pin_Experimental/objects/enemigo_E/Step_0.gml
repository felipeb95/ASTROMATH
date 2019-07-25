/// @description Insert description here
// You can write your code in this editor
if(espera = true)
{
	x = equis;
	y = ygriega;
} 

if(place_meeting(x+numVX,y,pared)) 
{
	while(!place_meeting(x,y+sign(numVX),pared))
	{
		x = x + sign(numVX)
	}
	numVX = 0;
	//jugador.vidaJugador--;
}
x += numVX;
