left = keyboard_check(vk_left);
right = keyboard_check(vk_right);

if(left)
	x = x - xSpeed;

if(right)
	x = x + xSpeed;
	

x = clamp(x,0+sprite_width/2,room_width-sprite_width/2);