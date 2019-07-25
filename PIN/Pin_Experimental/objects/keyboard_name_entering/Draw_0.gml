/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0C805470
/// @DnDArgument : "code" "//black keyboard background$(13_10)draw_set_alpha(0.1)$(13_10)draw_set_color(c_black)$(13_10)draw_rectangle(x-250,y-10,x+250,y+10,0)$(13_10)draw_rectangle(x-250,y+20,x+250,y+150,0)$(13_10)$(13_10)//orange cursor$(13_10)if horizontal=10$(13_10){if vertical=1$(13_10){draw_set_alpha(0.5)$(13_10)draw_set_color(c_orange)$(13_10)draw_rectangle(x-207+horizontal*30,y-5+vertical*30,x-140+horizontal*30,y+25+vertical*30,0)}$(13_10)if vertical=4$(13_10){draw_set_alpha(0.5)$(13_10)draw_set_color(c_orange)$(13_10)draw_rectangle(x-207+horizontal*30,y-5+vertical*30,x-94+horizontal*30,y+25+vertical*30,0)}}$(13_10)if horizontal=10$(13_10)if vertical<4$(13_10)if vertical>1$(13_10){draw_set_alpha(0.5)$(13_10)draw_set_color(c_orange)$(13_10)draw_rectangle(x-207+horizontal*30,y-5+vertical*30,x-177+horizontal*30,y+25+vertical*30,0)}$(13_10)if horizontal<10$(13_10){draw_set_alpha(0.5)$(13_10)draw_set_color(c_orange)$(13_10)draw_rectangle(x-207+horizontal*30,y-5+vertical*30,x-177+horizontal*30,y+25+vertical*30,0)}$(13_10)$(13_10)//letters$(13_10)draw_set_alpha(1)$(13_10)draw_set_halign(fa_left)$(13_10)draw_set_valign(fa_middle)$(13_10)draw_set_color(c_white)$(13_10)draw_set_font(font0)$(13_10)draw_text(x-230,y,string(global.name))$(13_10)$(13_10)draw_set_color(c_white)$(13_10)draw_text(x-170,y+40,"A")$(13_10)draw_text(x-140,y+40,"B")$(13_10)draw_text(x-110,y+40,"C")$(13_10)draw_text(x-80,y+40,"D")$(13_10)draw_text(x-50,y+40,"E")$(13_10)draw_text(x-20,y+40,"F")$(13_10)draw_text(x+10,y+40,"G")$(13_10)draw_text(x+40,y+40,"H")$(13_10)draw_text(x+70,y+40,"I")$(13_10)$(13_10)draw_text(x-170,y+70,"J")$(13_10)draw_text(x-140,y+70,"K")$(13_10)draw_text(x-110,y+70,"L")$(13_10)draw_text(x-80,y+70,"M")$(13_10)draw_text(x-50,y+70,"N")$(13_10)draw_text(x-20,y+70,"O")$(13_10)draw_text(x+10,y+70,"P")$(13_10)draw_text(x+40,y+70,"Q")$(13_10)draw_text(x+70,y+70,"R")$(13_10)draw_text(x+100,y+70,"S")$(13_10)$(13_10)draw_text(x-170,y+100,"T")$(13_10)draw_text(x-140,y+100,"U")$(13_10)draw_text(x-110,y+100,"V")$(13_10)draw_text(x-80,y+100,"W")$(13_10)draw_text(x-50,y+100,"X")$(13_10)draw_text(x-20,y+100,"Y")$(13_10)draw_text(x+10,y+100,"Z")$(13_10)draw_text(x+40,y+100,"1")$(13_10)draw_text(x+70,y+100,"2")$(13_10)draw_text(x+100,y+100,"3")$(13_10)$(13_10)draw_text(x-170,y+130,"4")$(13_10)draw_text(x-140,y+130,"5")$(13_10)draw_text(x-110,y+130,"6")$(13_10)draw_text(x-80,y+130,"7")$(13_10)draw_text(x-50,y+130,"8")$(13_10)draw_text(x-20,y+130,"9")$(13_10)draw_text(x+10,y+130,"0")$(13_10)draw_text(x+40,y+130," ")$(13_10)draw_text(x+70,y+130,"<")$(13_10)$(13_10)draw_text(x-170+270,y+40,"EXIT")$(13_10)draw_text(x-170+270,y+130,"ACCEPT")$(13_10)"
//black keyboard background
draw_set_alpha(0.1)
draw_set_color(c_black)
draw_rectangle(x-250,y-10,x+250,y+10,0)
draw_rectangle(x-250,y+20,x+250,y+150,0)

//orange cursor
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

//letters
draw_set_alpha(1)
draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_set_color(c_white)
draw_set_font(font0)
draw_text(x-230,y,string(global.name))

draw_set_color(c_white)
draw_text(x-170,y+40,"A")
draw_text(x-140,y+40,"B")
draw_text(x-110,y+40,"C")
draw_text(x-80,y+40,"D")
draw_text(x-50,y+40,"E")
draw_text(x-20,y+40,"F")
draw_text(x+10,y+40,"G")
draw_text(x+40,y+40,"H")
draw_text(x+70,y+40,"I")

draw_text(x-170,y+70,"J")
draw_text(x-140,y+70,"K")
draw_text(x-110,y+70,"L")
draw_text(x-80,y+70,"M")
draw_text(x-50,y+70,"N")
draw_text(x-20,y+70,"O")
draw_text(x+10,y+70,"P")
draw_text(x+40,y+70,"Q")
draw_text(x+70,y+70,"R")
draw_text(x+100,y+70,"S")

draw_text(x-170,y+100,"T")
draw_text(x-140,y+100,"U")
draw_text(x-110,y+100,"V")
draw_text(x-80,y+100,"W")
draw_text(x-50,y+100,"X")
draw_text(x-20,y+100,"Y")
draw_text(x+10,y+100,"Z")
draw_text(x+40,y+100,"1")
draw_text(x+70,y+100,"2")
draw_text(x+100,y+100,"3")

draw_text(x-170,y+130,"4")
draw_text(x-140,y+130,"5")
draw_text(x-110,y+130,"6")
draw_text(x-80,y+130,"7")
draw_text(x-50,y+130,"8")
draw_text(x-20,y+130,"9")
draw_text(x+10,y+130,"0")
draw_text(x+40,y+130," ")
draw_text(x+70,y+130,"<")

draw_text(x-170+270,y+40,"EXIT")
draw_text(x-170+270,y+130,"ACCEPT")