/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 48EC7640
/// @DnDArgument : "code" "//Print on the screen a name only up to 15 letters long$(13_10)if string_length(global.name) > length$(13_10)   {$(13_10)   global.name = string_copy(global.name, 1, length);$(13_10)   }$(13_10)$(13_10)//Type in the letter (only up to 15 letters on the screen)$(13_10)if length<15$(13_10){$(13_10)if keyboard_check_pressed(ord("A"))$(13_10){global.name+="A"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(ord("B"))$(13_10){global.name+="B"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(ord("C"))$(13_10){global.name+="C"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(ord("D"))$(13_10){global.name+="D"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(ord("E"))$(13_10){global.name+="E"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(ord("F"))$(13_10){global.name+="F"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(ord("G"))$(13_10){global.name+="G"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(ord("H"))$(13_10){global.name+="H"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(ord("I"))$(13_10){global.name+="I"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(ord("J"))$(13_10){global.name+="J"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(ord("K"))$(13_10){global.name+="K"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(ord("L"))$(13_10){global.name+="L"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(ord("M"))$(13_10){global.name+="M"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(ord("N"))$(13_10){global.name+="N"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(ord("O"))$(13_10){global.name+="O"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(ord("P"))$(13_10){global.name+="P"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(ord("Q"))$(13_10){global.name+="Q"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(ord("R"))$(13_10){global.name+="R"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(ord("S"))$(13_10){global.name+="S"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(ord("T"))$(13_10){global.name+="T"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(ord("U"))$(13_10){global.name+="U"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(ord("V"))$(13_10){global.name+="V"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(ord("W"))$(13_10){global.name+="W"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(ord("X"))$(13_10){global.name+="X"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(ord("Y"))$(13_10){global.name+="Y"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(ord("Z"))$(13_10){global.name+="Z"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(vk_space)$(13_10){global.name+=" "$(13_10)length+=1}$(13_10)$(13_10)if keyboard_check_pressed(ord("1"))$(13_10){global.name+="1"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(ord("2"))$(13_10){global.name+="2"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(ord("3"))$(13_10){global.name+="3"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(ord("4"))$(13_10){global.name+="4"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(ord("5"))$(13_10){global.name+="5"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(ord("6"))$(13_10){global.name+="6"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(ord("7"))$(13_10){global.name+="7"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(ord("8"))$(13_10){global.name+="8"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(ord("9"))$(13_10){global.name+="9"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(ord("0"))$(13_10){global.name+="0"$(13_10)length+=1}$(13_10)$(13_10)if keyboard_check_pressed(vk_numpad1)$(13_10){global.name+="1"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(vk_numpad2)$(13_10){global.name+="2"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(vk_numpad3)$(13_10){global.name+="3"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(vk_numpad4)$(13_10){global.name+="4"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(vk_numpad5)$(13_10){global.name+="5"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(vk_numpad6)$(13_10){global.name+="6"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(vk_numpad7)$(13_10){global.name+="7"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(vk_numpad8)$(13_10){global.name+="8"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(vk_numpad9)$(13_10){global.name+="9"$(13_10)length+=1}$(13_10)if keyboard_check_pressed(vk_numpad0)$(13_10){global.name+="0"$(13_10)length+=1}$(13_10)}$(13_10)$(13_10)//Erase the letter$(13_10)if length>0$(13_10){$(13_10)if keyboard_check_pressed(vk_backspace)$(13_10){length-=1}$(13_10)}$(13_10)"
//Print on the screen a name only up to 15 letters long
if string_length(global.name) > length
   {
   global.name = string_copy(global.name, 1, length);
   }

//Type in the letter (only up to 15 letters on the screen)
if length<15
{
if keyboard_check_pressed(ord("A"))
{global.name+="A"
length+=1}
if keyboard_check_pressed(ord("B"))
{global.name+="B"
length+=1}
if keyboard_check_pressed(ord("C"))
{global.name+="C"
length+=1}
if keyboard_check_pressed(ord("D"))
{global.name+="D"
length+=1}
if keyboard_check_pressed(ord("E"))
{global.name+="E"
length+=1}
if keyboard_check_pressed(ord("F"))
{global.name+="F"
length+=1}
if keyboard_check_pressed(ord("G"))
{global.name+="G"
length+=1}
if keyboard_check_pressed(ord("H"))
{global.name+="H"
length+=1}
if keyboard_check_pressed(ord("I"))
{global.name+="I"
length+=1}
if keyboard_check_pressed(ord("J"))
{global.name+="J"
length+=1}
if keyboard_check_pressed(ord("K"))
{global.name+="K"
length+=1}
if keyboard_check_pressed(ord("L"))
{global.name+="L"
length+=1}
if keyboard_check_pressed(ord("M"))
{global.name+="M"
length+=1}
if keyboard_check_pressed(ord("N"))
{global.name+="N"
length+=1}
if keyboard_check_pressed(ord("O"))
{global.name+="O"
length+=1}
if keyboard_check_pressed(ord("P"))
{global.name+="P"
length+=1}
if keyboard_check_pressed(ord("Q"))
{global.name+="Q"
length+=1}
if keyboard_check_pressed(ord("R"))
{global.name+="R"
length+=1}
if keyboard_check_pressed(ord("S"))
{global.name+="S"
length+=1}
if keyboard_check_pressed(ord("T"))
{global.name+="T"
length+=1}
if keyboard_check_pressed(ord("U"))
{global.name+="U"
length+=1}
if keyboard_check_pressed(ord("V"))
{global.name+="V"
length+=1}
if keyboard_check_pressed(ord("W"))
{global.name+="W"
length+=1}
if keyboard_check_pressed(ord("X"))
{global.name+="X"
length+=1}
if keyboard_check_pressed(ord("Y"))
{global.name+="Y"
length+=1}
if keyboard_check_pressed(ord("Z"))
{global.name+="Z"
length+=1}
if keyboard_check_pressed(vk_space)
{global.name+=" "
length+=1}

if keyboard_check_pressed(ord("1"))
{global.name+="1"
length+=1}
if keyboard_check_pressed(ord("2"))
{global.name+="2"
length+=1}
if keyboard_check_pressed(ord("3"))
{global.name+="3"
length+=1}
if keyboard_check_pressed(ord("4"))
{global.name+="4"
length+=1}
if keyboard_check_pressed(ord("5"))
{global.name+="5"
length+=1}
if keyboard_check_pressed(ord("6"))
{global.name+="6"
length+=1}
if keyboard_check_pressed(ord("7"))
{global.name+="7"
length+=1}
if keyboard_check_pressed(ord("8"))
{global.name+="8"
length+=1}
if keyboard_check_pressed(ord("9"))
{global.name+="9"
length+=1}
if keyboard_check_pressed(ord("0"))
{global.name+="0"
length+=1}

if keyboard_check_pressed(vk_numpad1)
{global.name+="1"
length+=1}
if keyboard_check_pressed(vk_numpad2)
{global.name+="2"
length+=1}
if keyboard_check_pressed(vk_numpad3)
{global.name+="3"
length+=1}
if keyboard_check_pressed(vk_numpad4)
{global.name+="4"
length+=1}
if keyboard_check_pressed(vk_numpad5)
{global.name+="5"
length+=1}
if keyboard_check_pressed(vk_numpad6)
{global.name+="6"
length+=1}
if keyboard_check_pressed(vk_numpad7)
{global.name+="7"
length+=1}
if keyboard_check_pressed(vk_numpad8)
{global.name+="8"
length+=1}
if keyboard_check_pressed(vk_numpad9)
{global.name+="9"
length+=1}
if keyboard_check_pressed(vk_numpad0)
{global.name+="0"
length+=1}
}

//Erase the letter
if length>0
{
if keyboard_check_pressed(vk_backspace)
{length-=1}
}