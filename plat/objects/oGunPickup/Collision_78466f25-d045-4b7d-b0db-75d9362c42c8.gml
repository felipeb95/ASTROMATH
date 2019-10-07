/// @description Equipar arma
// Puede escribir su código en este editor
global.hasgun=1;
instance_create_layer(oPlayer.x,oPlayer.y,"Gun",oGun);
instance_destroy();