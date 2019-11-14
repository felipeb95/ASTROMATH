playersHp= 3;
playersScore = 0;
global.playersScore = 0;


hpXOffset = 20;
hpYOffset = 5;
scoreX = 10;
scoreY = sprite_get_height(sHealthPoints)/2 + hpYOffset;

x = room_width/3 - hpXOffset;
y = hpYOffset;

multiplierValue = 1;
multiplierOn = false;
correctAnswerOn = false;
fiftyFiftyOn = false;

correctAnswers = 0;
wrongAnswers = 0;