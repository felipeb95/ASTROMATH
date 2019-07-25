/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1D728FA3
/// @DnDArgument : "code" "if moveing=1$(13_10){$(13_10)if horizontal<2$(13_10){horizontal=10}$(13_10)else$(13_10){horizontal-=1}$(13_10)$(13_10)moveing=0$(13_10)alarm[0]=5$(13_10)}$(13_10)"
if moveing=1
{
if horizontal<2
{horizontal=10}
else
{horizontal-=1}

moveing=0
alarm[0]=5
}