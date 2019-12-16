randomize();
backgroundTimer = irandom_range(50,200);
reverse = true;
fallSpeed = 4;
colorRate = 4;
depth = -1299;

freezeP = 0.20; // subi 0
slowP = 0.20; // subi 1
reverseP = 0.20; // subi 2
multiballP = 0.20; // subi 3
exploballP = 0.20; // subi 4

prob = random_range(0,1);//random_range(0,1);
show_debug_message("BONUS PROB: "+string(prob));

if(prob >= 0 and prob < freezeP)
	image_index = 0;
if(prob >= freezeP and prob < freezeP + slowP)
	image_index = 1;
if(prob >= freezeP + slowP and prob < freezeP + slowP + reverseP)
	image_index = 2;
if(prob >= freezeP + slowP + reverseP and prob < freezeP + slowP + reverseP + multiballP)
	image_index = 3;
if(prob >= freezeP + slowP + reverseP + multiballP and prob < freezeP + slowP + reverseP + multiballP + exploballP)
	image_index = 4;	