randomize();
prob = 1//random_range(0,1);
if(prob >= bonusChance and !onBonus and !oShootingBall.isABonus){
	bonusWidth = sprite_get_width(sBonus)
	var xPos = irandom_range(bonusWidth, room_width-bonusWidth);
	instance_create_depth(xPos,-50,-1500,oBonus);
	onBonus = true;
	show_debug_message("### ¡¡BONUS!! ###");
}
else
	show_debug_message("### NO BONUS ###");


alarm[0] = room_speed*3;