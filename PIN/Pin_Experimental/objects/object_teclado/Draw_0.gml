/// @description Insert description here
// You can write your code in this editor
//ini_open("datos.ini");
//		VecesJugadas = ini_read_real("juegos","vecesJugadas",0);
//		VecesJugadas = VecesJugadas + 1;
//		ini_write_real("juegos","vecesJugadas",VecesJugadas);
//ini_close();

draw_text(200,85,"INGRESA TU NOMBRE COMPLETO")
//draw_text(1025,160,"--> = ACEPTAR")
//draw_text(1025,260,"< = BORRAR")
//draw_text(1025,360,"_ = ESPACIO")
//black keyboard background
draw_set_alpha(0.1)
draw_set_color(c_black)
draw_rectangle(x-250,y-90,x+850,y-30,0)
//draw_rectangle(130,135,1170,135,0)

//orange cursor
/*
if horizontal=10
{if vertical=1
{draw_set_alpha(0.5)
draw_set_color(c_orange)
draw_rectangle(x-207+horizontal*30,y-5+vertical*30,x-140+horizontal*30,y+25+vertical*30,0)}
if vertical=4
{draw_set_alpha(0.5)
draw_set_color(c_orange)
draw_rectangle(x-207+horizontal*30,y-5+vertical*30,x-94+horizontal*30,y+25+vertical*30,0)}}
if horizontal=10
if vertical<4
if vertical>1
{draw_set_alpha(0.5)
draw_set_color(c_orange)
draw_rectangle(x-207+horizontal*30,y-5+vertical*30,x-177+horizontal*30,y+25+vertical*30,0)}
if horizontal<10
{draw_set_alpha(0.5)
draw_set_color(c_orange)
draw_rectangle(x-207+horizontal*30,y-5+vertical*30,x-177+horizontal*30,y+25+vertical*30,0)}
*/

//letters
draw_set_alpha(1)
draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_set_color(c_white)
draw_set_font(font0)
draw_text(x-230,y-60,string(global.name))

// Para X es + 100 y para y es mas 100 

draw_set_color(c_white)
draw_text(x-170,y+10,"A")
draw_text(x-70,y+10,"B")
draw_text(x+30,y+10,"C")
draw_text(x+130,y+10,"D")
draw_text(x+230,y+10,"E")
draw_text(x+330,y+10,"F")
draw_text(x+430,y+10,"G")
draw_text(x+530,y+10,"H")
draw_text(x+630,y+10,"I")

draw_text(x-170,y+110,"J")
draw_text(x-70,y+110,"K")
draw_text(x+30,y+110,"L")
draw_text(x+130,y+110,"M")
draw_text(x+230,y+110,"N")
draw_text(x+330,y+110,"O")
draw_text(x+430,y+110,"P")
draw_text(x+530,y+110,"Q")
draw_text(x+630,y+110,"R")
draw_text(x+730,y+110,"S")

draw_text(x-170,y+210,"T")
draw_text(x-70,y+210,"U")
draw_text(x+30,y+210,"V")
draw_text(x+130,y+210,"W")
draw_text(x+230,y+210,"X")
draw_text(x+330,y+210,"Y")
draw_text(x+430,y+210,"Z")
draw_text(x+530,y+210,"1")
draw_text(x+630,y+210,"2")
draw_text(x+730,y+210,"3")

draw_text(x-170,y+310,"4")
draw_text(x-70,y+310,"5")
draw_text(x+30,y+310,"6")
draw_text(x+130,y+310,"7")
draw_text(x+230,y+310,"8")
draw_text(x+330,y+310,"9")
draw_text(x+430,y+310,"0")



draw_text(x-170,y+410,"Espacio")

draw_text(x+130,y+410,"Borrar")

draw_text(x+430,y+410,"Enviar")
