/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
global.bonusActivo = 0;
if(instance_exists(oEnemy)) with(oEnemy) hsp = hsp*2;
if(instance_exists(oEBullet)) with(oEBullet) spd = spd*2;
oPlayer.grv = 0.5;
instance_destroy();