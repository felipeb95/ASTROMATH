/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
alarm[0] = 600; //15 sec
if(instance_exists(oEnemy)) with(oEnemy) hsp = hsp/2;
if(instance_exists(oEBullet)) with(oEBullet) spd = spd/2;
oPlayer.grv = 0.3;
