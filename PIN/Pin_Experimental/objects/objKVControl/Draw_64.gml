/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);
var _height = keyboard_virtual_height();
var _dw = display_get_width();
var _dh = display_get_height();
draw_text(_dw / 2, _dh - _height - 32, "Usuario" + kv_input_string);