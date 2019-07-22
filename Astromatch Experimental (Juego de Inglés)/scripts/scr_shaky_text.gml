///scr_shaky_text(text, xx, yy, sh)

var txt = argument0;
var sh = argument3;
var xx = argument1+random_range(sh,-sh);
var yy = argument2+random_range(sh,-sh);

draw_text(xx,yy,txt);


