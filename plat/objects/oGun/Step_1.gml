x = oPlayer.x;
y = oPlayer.y+10;

//image_angle = 0;//point_direction(x,y,mouse_x,mouse_y);
if(oPlayer.view<0) image_angle = 180;
if(oPlayer.view>0) image_angle = 0;
firingdelay = firingdelay - 1;
recoil = max(0,recoil-1);
if((keyboard_check(vk_space) or global.disparo) and firingdelay<0){
	recoil = 4;
	firingdelay = 5;
	ScreenShake(2,10);
	audio_sound_pitch(snShot,choose(0.8,1.0,1.2));
	audio_play_sound(snShot,5,false);
	with(instance_create_layer(x,y,"Bullets",oBullet)){
		spd = 25;
		direction = other.image_angle + random_range(-3,3);
		image_angle = direction;
	}
	with(oPlayer){
		gunkickx = lengthdir_x(1.5,other.image_angle-180);
		//gunkicky = lengthdir_x(1,other.image_angle-180);
	}
	global.disparo = false;
}

x = x + lengthdir_x(recoil,image_angle);
y = y + lengthdir_y(recoil,image_angle);

if(image_angle>90 and image_angle<270) image_yscale = -1;
else image_yscale = 1;

