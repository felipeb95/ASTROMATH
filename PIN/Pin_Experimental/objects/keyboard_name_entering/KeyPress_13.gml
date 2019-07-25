/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 44E24540
/// @DnDArgument : "code" "//Print on the screen a name only up to 15 letters long$(13_10)if string_length(global.name) > length$(13_10)   {$(13_10)   global.name = string_copy(global.name, 1, length);$(13_10)   }$(13_10)$(13_10)//Type in the letter (only up to 15 letters on the screen)$(13_10)if length<15$(13_10){$(13_10)if vertical = 1$(13_10){if horizontal = 1$(13_10){global.name+="A"$(13_10)length+=1}$(13_10)if horizontal = 2$(13_10){global.name+="B"$(13_10)length+=1}$(13_10)if horizontal = 3$(13_10){global.name+="C"$(13_10)length+=1}$(13_10)if horizontal = 4$(13_10){global.name+="D"$(13_10)length+=1}$(13_10)if horizontal = 5$(13_10){global.name+="E"$(13_10)length+=1}$(13_10)if horizontal = 6$(13_10){global.name+="F"$(13_10)length+=1}$(13_10)if horizontal = 7$(13_10){global.name+="G"$(13_10)length+=1}$(13_10)if horizontal = 8$(13_10){global.name+="H"$(13_10)length+=1}$(13_10)if horizontal = 9$(13_10){global.name+="I"$(13_10)length+=1}$(13_10)if horizontal = 10$(13_10){game_end()}}$(13_10)$(13_10)if vertical = 2$(13_10){if horizontal = 1$(13_10){global.name+="J"$(13_10)length+=1}$(13_10)if horizontal = 2$(13_10){global.name+="K"$(13_10)length+=1}$(13_10)if horizontal = 3$(13_10){global.name+="L"$(13_10)length+=1}$(13_10)if horizontal = 4$(13_10){global.name+="M"$(13_10)length+=1}$(13_10)if horizontal = 5$(13_10){global.name+="N"$(13_10)length+=1}$(13_10)if horizontal = 6$(13_10){global.name+="O"$(13_10)length+=1}$(13_10)if horizontal = 7$(13_10){global.name+="P"$(13_10)length+=1}$(13_10)if horizontal = 8$(13_10){global.name+="Q"$(13_10)length+=1}$(13_10)if horizontal = 9$(13_10){global.name+="R"$(13_10)length+=1}$(13_10)if horizontal = 10$(13_10){global.name+="S"$(13_10)length+=1}}$(13_10)$(13_10)if vertical = 3$(13_10){if horizontal = 1$(13_10){global.name+="T"$(13_10)length+=1}$(13_10)if horizontal = 2$(13_10){global.name+="U"$(13_10)length+=1}$(13_10)if horizontal = 3$(13_10){global.name+="V"$(13_10)length+=1}$(13_10)if horizontal = 4$(13_10){global.name+="W"$(13_10)length+=1}$(13_10)if horizontal = 5$(13_10){global.name+="X"$(13_10)length+=1}$(13_10)if horizontal = 6$(13_10){global.name+="Y"$(13_10)length+=1}$(13_10)if horizontal = 7$(13_10){global.name+="Z"$(13_10)length+=1}$(13_10)if horizontal = 8$(13_10){global.name+="1"$(13_10)length+=1}$(13_10)if horizontal = 9$(13_10){global.name+="2"$(13_10)length+=1}$(13_10)if horizontal = 10$(13_10){global.name+="3"$(13_10)length+=1}}$(13_10)$(13_10)if vertical = 4$(13_10){if horizontal = 1$(13_10){global.name+="4"$(13_10)length+=1}$(13_10)if horizontal = 2$(13_10){global.name+="5"$(13_10)length+=1}$(13_10)if horizontal = 3$(13_10){global.name+="6"$(13_10)length+=1}$(13_10)if horizontal = 4$(13_10){global.name+="7"$(13_10)length+=1}$(13_10)if horizontal = 5$(13_10){global.name+="8"$(13_10)length+=1}$(13_10)if horizontal = 6$(13_10){global.name+="9"$(13_10)length+=1}$(13_10)if horizontal = 7$(13_10){global.name+="0"$(13_10)length+=1}$(13_10)if horizontal = 8$(13_10){global.name+=" "$(13_10)length+=1}}$(13_10)}$(13_10)$(13_10)if horizontal = 10$(13_10)if vertical = 4$(13_10){show_message("Name entered")}$(13_10)//erase letters$(13_10)if horizontal = 9$(13_10)if vertical = 4$(13_10){if length>0$(13_10){length-=1}}"
//Print on the screen a name only up to 15 letters long
if string_length(global.name) > length
   {
   global.name = string_copy(global.name, 1, length);
   }

//Type in the letter (only up to 15 letters on the screen)
if length<15
{
if vertical = 1
{if horizontal = 1
{global.name+="A"
length+=1}
if horizontal = 2
{global.name+="B"
length+=1}
if horizontal = 3
{global.name+="C"
length+=1}
if horizontal = 4
{global.name+="D"
length+=1}
if horizontal = 5
{global.name+="E"
length+=1}
if horizontal = 6
{global.name+="F"
length+=1}
if horizontal = 7
{global.name+="G"
length+=1}
if horizontal = 8
{global.name+="H"
length+=1}
if horizontal = 9
{global.name+="I"
length+=1}
if horizontal = 10
{game_end()}}

if vertical = 2
{if horizontal = 1
{global.name+="J"
length+=1}
if horizontal = 2
{global.name+="K"
length+=1}
if horizontal = 3
{global.name+="L"
length+=1}
if horizontal = 4
{global.name+="M"
length+=1}
if horizontal = 5
{global.name+="N"
length+=1}
if horizontal = 6
{global.name+="O"
length+=1}
if horizontal = 7
{global.name+="P"
length+=1}
if horizontal = 8
{global.name+="Q"
length+=1}
if horizontal = 9
{global.name+="R"
length+=1}
if horizontal = 10
{global.name+="S"
length+=1}}

if vertical = 3
{if horizontal = 1
{global.name+="T"
length+=1}
if horizontal = 2
{global.name+="U"
length+=1}
if horizontal = 3
{global.name+="V"
length+=1}
if horizontal = 4
{global.name+="W"
length+=1}
if horizontal = 5
{global.name+="X"
length+=1}
if horizontal = 6
{global.name+="Y"
length+=1}
if horizontal = 7
{global.name+="Z"
length+=1}
if horizontal = 8
{global.name+="1"
length+=1}
if horizontal = 9
{global.name+="2"
length+=1}
if horizontal = 10
{global.name+="3"
length+=1}}

if vertical = 4
{if horizontal = 1
{global.name+="4"
length+=1}
if horizontal = 2
{global.name+="5"
length+=1}
if horizontal = 3
{global.name+="6"
length+=1}
if horizontal = 4
{global.name+="7"
length+=1}
if horizontal = 5
{global.name+="8"
length+=1}
if horizontal = 6
{global.name+="9"
length+=1}
if horizontal = 7
{global.name+="0"
length+=1}
if horizontal = 8
{global.name+=" "
length+=1}}
}

if horizontal = 10
if vertical = 4
{show_message("Name entered")}
//erase letters
if horizontal = 9
if vertical = 4
{if length>0
{length-=1}}