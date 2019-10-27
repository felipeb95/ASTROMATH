/* # # # CANNON MOVEMENT # # # */

left = keyboard_check(vk_left);
right = keyboard_check(vk_right);

if(left){
	x -= xSpeed;
	left = false;
}

if(right){
	x += xSpeed;
	right = false;
}

/* Cannon xOffset will never go through the playroom or the end of the room */
x = clamp(x, room_width/3+sprite_get_width(sCannon)/2,room_width-sprite_get_width(sCannon)/2);

/* # # # CANNON SHOOTING # # # */

space = keyboard_check_released(vk_space);

if(space){
	instance_create_depth(x,y-sprite_get_height(sCannon),-1001,oProjectile);
	space = false;
}