/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor


/// @description Insert description here
// You can write your code in this editor
//Print on the screen a name only up to 15 letters long
if string_length(global.name) > length
   {
   global.name = string_copy(global.name, 1, length);
   }

if mouse_y > y-90
if mouse_y < y+30
{
	if mouse_x < x-70
		if mouse_x > x-170{
			horizontal = 1
			vertical = 1
		}
		
	if mouse_x < x+30
		if mouse_x > x-70{
			horizontal = 2
			vertical = 1
		}
		
	if mouse_x < x+130
		if mouse_x > x+30{
			horizontal = 3
			vertical = 1
		}
		
	if mouse_x < x+230
		if mouse_x > x+130{
			horizontal = 4
			vertical = 1
		}
		
	if mouse_x < x+330
		if mouse_x > x+230{
			horizontal = 5
			vertical = 1
		}
		
	if mouse_x < x+430
		if mouse_x > x+330{
			horizontal = 6
			vertical = 1
		}
		
	if mouse_x < x+530
		if mouse_x > x+430{
			horizontal = 7
			vertical = 1
		}
		
	if mouse_x < x+630
		if mouse_x > x+530{
			horizontal = 8
			vertical = 1
		}

	if mouse_x < x+730
		if mouse_x > x+630{
			horizontal = 9
			vertical = 1
		}
}

if mouse_y > y+50
if mouse_y < y+130
{
	
	if mouse_x < x-70
		if mouse_x > x-170{
			horizontal = 1
			vertical = 2
		}
		
	if mouse_x < x+30
		if mouse_x > x-70{
			horizontal = 2
			vertical = 2
		}
		
	if mouse_x < x+130
		if mouse_x > x+30{
			horizontal = 3
			vertical = 2
		}
		
	if mouse_x < x+230
		if mouse_x > x+130{
			horizontal = 4
			vertical = 2
		}
		
	if mouse_x < x+330
		if mouse_x > x+230{
			horizontal = 5
			vertical = 2
		}
		
	if mouse_x < x+430
		if mouse_x > x+330{
			horizontal = 6
			vertical = 2
		}
		
	if mouse_x < x+530
		if mouse_x > x+430{
			horizontal = 7
			vertical = 2
		}
		
	if mouse_x < x+630
		if mouse_x > x+530{
			horizontal = 8
			vertical = 2
		}
		
	if mouse_x < x+730
		if mouse_x > x+630{
			horizontal = 9
			vertical = 2
		}
		
	if mouse_x < x+830
		if mouse_x > x+730{
			horizontal = 10
			vertical = 2
		}
}


if mouse_y > y+150
if mouse_y < y+230
{
	
	if mouse_x < x-70
		if mouse_x > x-170{
			horizontal = 1
			vertical = 3
		}
		
	if mouse_x < x+30
		if mouse_x > x-70{
			horizontal = 2
			vertical = 3
		}
		
	if mouse_x < x+130
		if mouse_x > x+30{
			horizontal = 3
			vertical = 3
		}
		
	if mouse_x < x+230
		if mouse_x > x+130{
			horizontal = 4
			vertical = 3
		}
		
	if mouse_x < x+330
		if mouse_x > x+230{
			horizontal = 5
			vertical = 3
		}
		
	if mouse_x < x+430
		if mouse_x > x+330{
			horizontal = 6
			vertical = 3
		}
		
	if mouse_x < x+530
		if mouse_x > x+430{
			horizontal = 7
			vertical = 3
		}
		
	if mouse_x < x+630
		if mouse_x > x+530{
			horizontal = 8
			vertical = 3
		}
		
	if mouse_x < x+730
		if mouse_x > x+630{
			horizontal = 9
			vertical = 3
		}
		
	if mouse_x < x+830
		if mouse_x > x+730{
			horizontal = 10
			vertical = 3
		}
}

if mouse_y > y+250
if mouse_y < y+330
{
	
	if mouse_x < x-70
		if mouse_x > x-170{
			horizontal = 1
			vertical = 4
		}
		
	if mouse_x < x+30
		if mouse_x > x-70{
			horizontal = 2
			vertical = 4
		}
		
	if mouse_x < x+130
		if mouse_x > x+30{
			horizontal = 3
			vertical = 4
		}
		
	if mouse_x < x+230
		if mouse_x > x+130{
			horizontal = 4
			vertical = 4
		}
		
	if mouse_x < x+330
		if mouse_x > x+230{
			horizontal = 5
			vertical = 4
		}
		
	if mouse_x < x+430
		if mouse_x > x+330{
			horizontal = 6
			vertical = 4
		}
		
	if mouse_x < x+530
		if mouse_x > x+430{
			horizontal = 7
			vertical = 4
		}
		
	
}

if mouse_y > y+340
if mouse_y < y+440
{
	if mouse_x < x+30
		if mouse_x > x-170{
			horizontal = 8
			vertical = 4
		}
		
	if mouse_x < x+330
		if mouse_x > x+130{
			horizontal = 9
			vertical = 4
		}
		
	if mouse_x < x+630
		if mouse_x > x+430{
			horizontal = 10
			vertical = 4
		}
	
}

else
{horizontal = 0
vertical = 0}



//Type in the letter (only up to 15 letters on the screen)
if length<30
{
if vertical = 1
{if horizontal = 1
{
	global.name+="A"
length+=1
	horizontal = 0
	vertical = 0
}
if horizontal = 2
{global.name+="B"
length+=1
horizontal = 0
	vertical = 0
}
if horizontal = 3
{global.name+="C"
length+=1
horizontal = 0
	vertical = 0}
if horizontal = 4
{global.name+="D"
length+=1
horizontal = 0
	vertical = 0}
if horizontal = 5
{global.name+="E"
length+=1
horizontal = 0
	vertical = 0}
if horizontal = 6
{
	global.name+="F"
	length+=1
	horizontal = 0
	vertical = 0
}
if horizontal = 7
{global.name+="G"
length+=1
horizontal = 0
	vertical = 0}
if horizontal = 8
{global.name+="H"
length+=1
horizontal = 0
	vertical = 0}
if horizontal = 9
{global.name+="I"
length+=1
horizontal = 0
	vertical = 0}
}
if vertical = 2
{if horizontal = 1
{global.name+="J"
length+=1
horizontal = 0
	vertical = 0}
if horizontal = 2
{global.name+="K"
length+=1
horizontal = 0
	vertical = 0}
if horizontal = 3
{global.name+="L"
length+=1
horizontal = 0
	vertical = 0}
if horizontal = 4
{global.name+="M"
length+=1
horizontal = 0
	vertical = 0}
if horizontal = 5
{global.name+="N"
length+=1
horizontal = 0
	vertical = 0}
if horizontal = 6
{global.name+="O"
length+=1
horizontal = 0
	vertical = 0}
if horizontal = 7
{global.name+="P"
length+=1
horizontal = 0
	vertical = 0}
if horizontal = 8
{global.name+="Q"
length+=1
horizontal = 0
	vertical = 0}
if horizontal = 9
{global.name+="R"
length+=1
horizontal = 0
	vertical = 0}
if horizontal = 10
{global.name+="S"
length+=1
horizontal = 0
	vertical = 0}}

if vertical = 3
{if horizontal = 1
{global.name+="T"
length+=1
horizontal = 0
	vertical = 0}
if horizontal = 2
{global.name+="U"
length+=1
horizontal = 0
	vertical = 0}
if horizontal = 3
{global.name+="V"
length+=1
horizontal = 0
	vertical = 0}
if horizontal = 4
{global.name+="W"
length+=1
horizontal = 0
	vertical = 0}
if horizontal = 5
{global.name+="X"
length+=1
horizontal = 0
	vertical = 0}
if horizontal = 6
{global.name+="Y"
length+=1
horizontal = 0
	vertical = 0}
if horizontal = 7
{global.name+="Z"
length+=1
horizontal = 0
	vertical = 0}
if horizontal = 8
{global.name+="1"
length+=1
horizontal = 0
	vertical = 0}
if horizontal = 9
{global.name+="2"
length+=1
horizontal = 0
	vertical = 0}
if horizontal = 10
{global.name+="3"
length+=1
horizontal = 0
	vertical = 0}}

if vertical = 4
{if horizontal = 1
{global.name+="4"
length+=1
horizontal = 0
	vertical = 0}
if horizontal = 2
{global.name+="5"
length+=1
horizontal = 0
	vertical = 0}
if horizontal = 3
{global.name+="6"
length+=1
horizontal = 0
	vertical = 0}
if horizontal = 4
{global.name+="7"
length+=1
horizontal = 0
	vertical = 0}
if horizontal = 5
{global.name+="8"
length+=1
horizontal = 0
	vertical = 0}
if horizontal = 6
{global.name+="9"
length+=1
horizontal = 0
	vertical = 0}
if horizontal = 7
{global.name+="0"
length+=1
horizontal = 0
	vertical = 0}
if horizontal = 8
{global.name+=" "
length+=1
horizontal = 0
	vertical = 0}}
}

if horizontal = 10
if vertical = 4
{
	if(string_length(global.name) >2 )
	room_goto(room_zombie);
	
}
//erase letters
if horizontal = 9
if vertical = 4
{
	if length>0{
		length-=1
	}
	if string_length(global.name) > length
   {
   global.name = string_copy(global.name, 1, length);
   }
}
