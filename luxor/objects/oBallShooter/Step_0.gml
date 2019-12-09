left = keyboard_check(vk_left);
right = keyboard_check(vk_right);

if(left)
	x = x - 5;

if(right)
	x = x + 5;
	

x = clamp(x,0+sprite_width/2,room_width-sprite_width/2);