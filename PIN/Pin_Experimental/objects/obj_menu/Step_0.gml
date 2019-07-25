/// @description Insert description here
// You can write your code in this editor
var keyAccept, keyAnykey, keyUp, keyDown, keyRestart;

keyUp = keyboard_check_pressed(vk_up);
keyDown = keyboard_check_pressed(vk_down);
keyAccept = keyboard_check_pressed(vk_enter);
keyAnykey = keyboard_check_pressed(vk_anykey);

switch(global.strGameState)
{
	case "start":
		if(keyAnykey) global.strGameState = "start_menu";
		break;
		
	case "start_menu":
		if(keyUp)
		{
			if(numOpcion > 0) numOpcion--;
		}
		if(keyDown)
		{
			if(numOpcion < array_length_1d(opcion) - 1) numOpcion++;
		}
		if(keyAccept)
		{
			switch(numOpcion)
			{
				case 1:
					room_goto(room_zombie);
					global.strGameState = "game_new";
				break;
				
				case 2:
					game_end();
				break;
			}
		}
}
