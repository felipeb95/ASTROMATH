barHeight = sprite_get_height(sHudBar);
depth = -10000;
mouseX = undefined;
mouseY = undefined;
x = 0;
y = room_height-barHeight;
right_finger = 0;
finger[0] = -1        //Primer dedo
finger[1] = -1        //Segundo dedo
canShoot = false;
alarm[0] = room_speed*0.5;
leftFinger = 0; // -1 for left, 1 for right, 0 for nothing
rightFinger = 0; // 1 for shooting, 0 for nothing.
offset = sprite_get_width(sCorrectAnswerBonus)/2;