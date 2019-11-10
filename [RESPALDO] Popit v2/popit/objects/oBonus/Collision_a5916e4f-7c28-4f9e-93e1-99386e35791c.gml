show_debug_message("[BONUS TAKEN]");
instance_destroy(self);
instance_destroy(oBonusBox);
oSoundEffects.alarm[2] = 1;
bonusTaken(bonusSubImg);