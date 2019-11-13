randomize();
image_index = irandom_range(0,sprite_get_number(sBonusBase)-1);
bonusSubImg = undefined;
oscilate = true;
oscilationRate = 0.5;
maxDegree = 25;
minDegree = -25;
ySpeed = 1.5;

bonus1P = 10;
bonus2P = 15;
bonus3P = 25;
bonus4P = 25;
bonus5P = 15;
bonus6P = 10;

bonusP = irandom_range(0,99);
if(bonusP >= 0 and bonusP < bonus1P +1)
	bonusSubImg = 0;
if(bonusP >= bonus1P +1 and bonusP < bonus1P + bonus2P +1)
	bonusSubImg = 1;
if(bonusP >= bonus1P + bonus2P +1 and bonusP < bonus1P + bonus2P + bonus3P +1)
	bonusSubImg = 2;
if(bonusP >= bonus1P + bonus2P + bonus3P +1 and bonusP  <bonus1P + bonus2P + bonus3P + bonus4P +1)
	bonusSubImg = 3;
if(bonusP >= bonus1P + bonus2P + bonus3P + bonus4P +1 and bonusP < bonus1P + bonus2P + bonus3P + bonus4P + bonus5P +1)
	bonusSubImg = 4;
if(bonusP >= bonus1P + bonus2P + bonus3P + bonus4P + bonus5P +1 and bonusP < bonus1P + bonus2P + bonus3P + bonus4P + bonus5P + bonus6P +1)
	bonusSubImg = 5;

//show_debug_message("[BONUS PROBABILITY] Generated P = "+string(bonusP)+" corresponding to "+string(bonusSubImg));

bonusBox = instance_create_depth(x,y,depth,oBonusBox);
with(bonusBox){
	ySpeed = oBonus.ySpeed;
	image_index = oBonus.bonusSubImg;
}


/* 
	# # # BONUS LIST # # #
	> subimage 1 : Shows the correct answer for a second.				(10% chance)
	> subimage 2 : Gives +100 points									(15% chance)
	> subimage 3 : Gives x2 points on next correct answer.				(25% chance)
	> subimage 4 : Gives x3 points on next correct answer.				(25% chance)
	> subimage 5 : Gives x4 points on next correct answer.				(15% chance)
	> subimage 6 : Gives x5 points on next correct answer.				(10% chance)


*/
