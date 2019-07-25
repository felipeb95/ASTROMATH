/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5085F9F1
/// @DnDArgument : "code" "if moveing=1$(13_10){$(13_10)if horizontal>9$(13_10){horizontal=1}$(13_10)else$(13_10){horizontal+=1}$(13_10)$(13_10)moveing=0$(13_10)alarm[0]=5$(13_10)}$(13_10)"
if moveing=1
{
if horizontal>9
{horizontal=1}
else
{horizontal+=1}

moveing=0
alarm[0]=5
}