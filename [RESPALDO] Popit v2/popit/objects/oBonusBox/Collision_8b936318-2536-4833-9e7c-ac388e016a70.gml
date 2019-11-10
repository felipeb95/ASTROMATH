show_debug_message("[BONUS TAKEN]");
instance_destroy(self);
instance_destroy(oBonus);
oSoundEffects.alarm[2] = 1;
bonusTaken(image_index);