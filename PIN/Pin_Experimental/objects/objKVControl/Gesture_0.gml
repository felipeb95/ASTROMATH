/// @description Insert description here
// You can write your code in this editor
		
	if keyboard_virtual_status(){
			kv_input_string = keyboard_string;
		}
	
	if keyboard_virtual_status() == false{
			keyboard_string = "";
			keyboard_virtual_show(kbv_type_default, kbv_returnkey_default, kbv_autocapitalize_none, false);
		}
	else{
			keyboard_virtual_hide();
		}

	
