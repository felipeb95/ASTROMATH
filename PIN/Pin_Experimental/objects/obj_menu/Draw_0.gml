/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);

switch(global.strGameState)
{
	case "start":
		draw_sprite(sprTitle, 0, room_width div 2, room_height div 2);
		draw_set_color(c_black);
		draw_text(room_width div 2 + 1, 500, strStart);
		draw_set_color(c_white);
		draw_text(room_width div 2, 500 -1, strStart);
	break;
	
	case "start_menu":
		draw_sprite(sprTitle, 0, room_width div 2, room_height div 3);
		
		for(var i = 0; i < array_length_1d(opcion); i++)
		{
			draw_set_color(c_black);
			draw_text(room_width div 2 + 1, 400 + i * 50, opcion[i]);
			draw_set_color(c_white);
			draw_text(room_width div 2, 400 -1 + i * 50, opcion[i]);
			
			if(numOpcion == i) draw_sprite(mariposa_menu, 0, 400, 410 + i * 50);
		}
	break;
}

