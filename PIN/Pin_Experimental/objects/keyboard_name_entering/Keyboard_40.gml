/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6B53BF63
/// @DnDArgument : "code" "if moveing=1$(13_10){$(13_10)if vertical>3$(13_10){vertical=1}$(13_10)else$(13_10){vertical+=1}$(13_10)$(13_10)moveing=0$(13_10)alarm[0]=5$(13_10)}$(13_10)"
if moveing=1
{
if vertical>3
{vertical=1}
else
{vertical+=1}

moveing=0
alarm[0]=5
}