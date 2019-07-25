/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 48EC7640
/// @DnDArgument : "code" "//Print on the screen a name only up to 15 letters long$(13_10)if string_length(global.name) > length$(13_10)   {$(13_10)   global.name = string_copy(global.name, 1, length);$(13_10)   }$(13_10)$(13_10)if mouse_y > y+25$(13_10)if mouse_y < y+55$(13_10){$(13_10)if mouse_x < x-140$(13_10)if mouse_x > x-170$(13_10){horizontal = 1$(13_10)vertical = 1}$(13_10)if mouse_x < x-110$(13_10)if mouse_x > x-140$(13_10){horizontal = 2$(13_10)vertical = 1}$(13_10)if mouse_x < x-80$(13_10)if mouse_x > x-110$(13_10){horizontal = 3$(13_10)vertical = 1}$(13_10)if mouse_x < x-50$(13_10)if mouse_x > x-80$(13_10){horizontal = 4$(13_10)vertical = 1}$(13_10)if mouse_x < x-20$(13_10)if mouse_x > x-50$(13_10){horizontal = 5$(13_10)vertical = 1}$(13_10)if mouse_x < x+10$(13_10)if mouse_x > x-20$(13_10){horizontal = 6$(13_10)vertical = 1}$(13_10)if mouse_x < x+40$(13_10)if mouse_x > x+10$(13_10){horizontal = 7$(13_10)vertical = 1}$(13_10)if mouse_x < x+70$(13_10)if mouse_x > x+40$(13_10){horizontal = 8$(13_10)vertical = 1}$(13_10)if mouse_x < x+100$(13_10)if mouse_x > x+70$(13_10){horizontal = 9$(13_10)vertical = 1}$(13_10)if mouse_x < x+130$(13_10)if mouse_x > x+100$(13_10){horizontal = 10$(13_10)vertical = 1}}$(13_10)$(13_10)if mouse_y > y+55$(13_10)if mouse_y < y+85$(13_10){$(13_10)if mouse_x < x-140$(13_10)if mouse_x > x-170$(13_10){horizontal = 1$(13_10)vertical = 2}$(13_10)if mouse_x < x-110$(13_10)if mouse_x > x-140$(13_10){horizontal = 2$(13_10)vertical = 2}$(13_10)if mouse_x < x-80$(13_10)if mouse_x > x-110$(13_10){horizontal = 3$(13_10)vertical = 2}$(13_10)if mouse_x < x-50$(13_10)if mouse_x > x-80$(13_10){horizontal = 4$(13_10)vertical = 2}$(13_10)if mouse_x < x-20$(13_10)if mouse_x > x-50$(13_10){horizontal = 5$(13_10)vertical = 2}$(13_10)if mouse_x < x+10$(13_10)if mouse_x > x-20$(13_10){horizontal = 6$(13_10)vertical = 2}$(13_10)if mouse_x < x+40$(13_10)if mouse_x > x+10$(13_10){horizontal = 7$(13_10)vertical = 2}$(13_10)if mouse_x < x+70$(13_10)if mouse_x > x+40$(13_10){horizontal = 8$(13_10)vertical = 2}$(13_10)if mouse_x < x+100$(13_10)if mouse_x > x+70$(13_10){horizontal = 9$(13_10)vertical = 2}$(13_10)if mouse_x < x+130$(13_10)if mouse_x > x+100$(13_10){horizontal = 10$(13_10)vertical = 2}}$(13_10)$(13_10)if mouse_y > y+85$(13_10)if mouse_y < y+115$(13_10){$(13_10)if mouse_x < x-140$(13_10)if mouse_x > x-170$(13_10){horizontal = 1$(13_10)vertical = 3}$(13_10)if mouse_x < x-110$(13_10)if mouse_x > x-140$(13_10){horizontal = 2$(13_10)vertical = 3}$(13_10)if mouse_x < x-80$(13_10)if mouse_x > x-110$(13_10){horizontal = 3$(13_10)vertical = 3}$(13_10)if mouse_x < x-50$(13_10)if mouse_x > x-80$(13_10){horizontal = 4$(13_10)vertical = 3}$(13_10)if mouse_x < x-20$(13_10)if mouse_x > x-50$(13_10){horizontal = 5$(13_10)vertical = 3}$(13_10)if mouse_x < x+10$(13_10)if mouse_x > x-20$(13_10){horizontal = 6$(13_10)vertical = 3}$(13_10)if mouse_x < x+40$(13_10)if mouse_x > x+10$(13_10){horizontal = 7$(13_10)vertical = 3}$(13_10)if mouse_x < x+70$(13_10)if mouse_x > x+40$(13_10){horizontal = 8$(13_10)vertical = 3}$(13_10)if mouse_x < x+100$(13_10)if mouse_x > x+70$(13_10){horizontal = 9$(13_10)vertical = 3}$(13_10)if mouse_x < x+130$(13_10)if mouse_x > x+100$(13_10){horizontal = 10$(13_10)vertical = 3}}$(13_10)$(13_10)if mouse_y > y+115$(13_10)if mouse_y < y+145$(13_10){$(13_10)if mouse_x < x-140$(13_10)if mouse_x > x-170$(13_10){horizontal = 1$(13_10)vertical = 4}$(13_10)if mouse_x < x-110$(13_10)if mouse_x > x-140$(13_10){horizontal = 2$(13_10)vertical = 4}$(13_10)if mouse_x < x-80$(13_10)if mouse_x > x-110$(13_10){horizontal = 3$(13_10)vertical = 4}$(13_10)if mouse_x < x-50$(13_10)if mouse_x > x-80$(13_10){horizontal = 4$(13_10)vertical = 4}$(13_10)if mouse_x < x-20$(13_10)if mouse_x > x-50$(13_10){horizontal = 5$(13_10)vertical = 4}$(13_10)if mouse_x < x+10$(13_10)if mouse_x > x-20$(13_10){horizontal = 6$(13_10)vertical = 4}$(13_10)if mouse_x < x+40$(13_10)if mouse_x > x+10$(13_10){horizontal = 7$(13_10)vertical = 4}$(13_10)if mouse_x < x+70$(13_10)if mouse_x > x+40$(13_10){horizontal = 8$(13_10)vertical = 4}$(13_10)if mouse_x < x+100$(13_10)if mouse_x > x+70$(13_10){horizontal = 9$(13_10)vertical = 4}$(13_10)if mouse_x < x+130$(13_10)if mouse_x > x+100$(13_10){horizontal = 10$(13_10)vertical = 4}}$(13_10)$(13_10)else$(13_10){horizontal = 0$(13_10)vertical = 0}"
//Print on the screen a name only up to 15 letters long
if string_length(global.name) > length
   {
   global.name = string_copy(global.name, 1, length);
   }

if mouse_y > y+25
if mouse_y < y+55
{
if mouse_x < x-140
if mouse_x > x-170
{horizontal = 1
vertical = 1}
if mouse_x < x-110
if mouse_x > x-140
{horizontal = 2
vertical = 1}
if mouse_x < x-80
if mouse_x > x-110
{horizontal = 3
vertical = 1}
if mouse_x < x-50
if mouse_x > x-80
{horizontal = 4
vertical = 1}
if mouse_x < x-20
if mouse_x > x-50
{horizontal = 5
vertical = 1}
if mouse_x < x+10
if mouse_x > x-20
{horizontal = 6
vertical = 1}
if mouse_x < x+40
if mouse_x > x+10
{horizontal = 7
vertical = 1}
if mouse_x < x+70
if mouse_x > x+40
{horizontal = 8
vertical = 1}
if mouse_x < x+100
if mouse_x > x+70
{horizontal = 9
vertical = 1}
if mouse_x < x+130
if mouse_x > x+100
{horizontal = 10
vertical = 1}}

if mouse_y > y+55
if mouse_y < y+85
{
if mouse_x < x-140
if mouse_x > x-170
{horizontal = 1
vertical = 2}
if mouse_x < x-110
if mouse_x > x-140
{horizontal = 2
vertical = 2}
if mouse_x < x-80
if mouse_x > x-110
{horizontal = 3
vertical = 2}
if mouse_x < x-50
if mouse_x > x-80
{horizontal = 4
vertical = 2}
if mouse_x < x-20
if mouse_x > x-50
{horizontal = 5
vertical = 2}
if mouse_x < x+10
if mouse_x > x-20
{horizontal = 6
vertical = 2}
if mouse_x < x+40
if mouse_x > x+10
{horizontal = 7
vertical = 2}
if mouse_x < x+70
if mouse_x > x+40
{horizontal = 8
vertical = 2}
if mouse_x < x+100
if mouse_x > x+70
{horizontal = 9
vertical = 2}
if mouse_x < x+130
if mouse_x > x+100
{horizontal = 10
vertical = 2}}

if mouse_y > y+85
if mouse_y < y+115
{
if mouse_x < x-140
if mouse_x > x-170
{horizontal = 1
vertical = 3}
if mouse_x < x-110
if mouse_x > x-140
{horizontal = 2
vertical = 3}
if mouse_x < x-80
if mouse_x > x-110
{horizontal = 3
vertical = 3}
if mouse_x < x-50
if mouse_x > x-80
{horizontal = 4
vertical = 3}
if mouse_x < x-20
if mouse_x > x-50
{horizontal = 5
vertical = 3}
if mouse_x < x+10
if mouse_x > x-20
{horizontal = 6
vertical = 3}
if mouse_x < x+40
if mouse_x > x+10
{horizontal = 7
vertical = 3}
if mouse_x < x+70
if mouse_x > x+40
{horizontal = 8
vertical = 3}
if mouse_x < x+100
if mouse_x > x+70
{horizontal = 9
vertical = 3}
if mouse_x < x+130
if mouse_x > x+100
{horizontal = 10
vertical = 3}}

if mouse_y > y+115
if mouse_y < y+145
{
if mouse_x < x-140
if mouse_x > x-170
{horizontal = 1
vertical = 4}
if mouse_x < x-110
if mouse_x > x-140
{horizontal = 2
vertical = 4}
if mouse_x < x-80
if mouse_x > x-110
{horizontal = 3
vertical = 4}
if mouse_x < x-50
if mouse_x > x-80
{horizontal = 4
vertical = 4}
if mouse_x < x-20
if mouse_x > x-50
{horizontal = 5
vertical = 4}
if mouse_x < x+10
if mouse_x > x-20
{horizontal = 6
vertical = 4}
if mouse_x < x+40
if mouse_x > x+10
{horizontal = 7
vertical = 4}
if mouse_x < x+70
if mouse_x > x+40
{horizontal = 8
vertical = 4}
if mouse_x < x+100
if mouse_x > x+70
{horizontal = 9
vertical = 4}
if mouse_x < x+130
if mouse_x > x+100
{horizontal = 10
vertical = 4}}

else
{horizontal = 0
vertical = 0}