switch (os_type)
 {
   case os_windows: global.Config = 0; break;
   case os_android: global.Config = 1; break;
   case os_linux: global.Config = 0; break;
   case os_macosx: global.Config = 0; break;
   case os_ios: global.Config = 1; break;
 }