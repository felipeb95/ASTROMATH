buttonText = argument0;

result = false;
top = currentY;
bottom = top + string_height(buttonText) + 3;
halfButton = string_width(buttonText)/2;
left = x - halfButton -5;
right = x + halfButton + 5;

draw_set_colour(make_colour_hsv(0,200,120));

if(mouse_x > left and mouse_x < right and mouse_y > top and mouse_y < bottom){
    draw_set_alpha(1);
    if(mouse_check_button_pressed(mb_left)){
    result = true;
    }
}else{
    draw_set_alpha(0.5);
}


draw_button(left,top,right,bottom, false);
draw_set_alpha(1);
draw_set_colour(c_white);
scr_title(buttonText);
return result;
