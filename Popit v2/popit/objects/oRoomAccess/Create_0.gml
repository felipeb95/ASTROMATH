reverse = false;
alpha_change = 1.0;
c1 = c_black;
loadingMsg = "CARGANDO...";
loadingTypewriterOut = "";
i = 1;
alarm[0] =	1;

canStart = false;

switch (os_type)
{
	case os_windows: 
		global.Config = 0; 
	break;
	case os_android: // MOBILE 
		global.Config = 1; 
	break;
	case os_linux: 
		global.Config = 2; 
	break;
	case os_macosx:
		global.Config = 3; 
	break;
	case os_ios: // MOBILE 
		global.Config = 4; 
	break;
}