randomize();
prob = 1//random_range(0,1);
if(global.Config == 2){
	if(prob >= bonusChance and !onBonus and !oFingerCatch.multiBonus and !oFingerCatch.exploBonus and !instance_exists(oFeedback)){
		bonusWidth = sprite_get_width(sBonus)
		var xPos = irandom_range(bonusWidth, room_width-bonusWidth);
		instance_create_depth(xPos,-50,-1500,oBonus);
		onBonus = true;
		show_debug_message("### ¡¡BONUS!! ###");
	}
	else
		show_debug_message("### NO BONUS ###");
}
else{
	if(prob >= bonusChance and !onBonus and !oShootingBall.multiBonus and !oShootingBall.exploBonus and !instance_exists(oFeedback)){
		bonusWidth = sprite_get_width(sBonus)
		var xPos = irandom_range(bonusWidth, room_width-bonusWidth);
		instance_create_depth(xPos,-50,-1500,oBonus);
		onBonus = true;
		show_debug_message("### ¡¡BONUS!! ###");
	}
	else
		show_debug_message("### NO BONUS ###");
	
}

if(instance_exists(oFeedback))
	alarm[0] = room_speed*6;
else
	alarm[0] = room_speed*3;