randomize();
backgroundTimer = irandom_range(50,200);
reverse = true;
fallSpeed = 7;
colorRate = 4;
depth = -1299;

freezeP = 0.35; // subi 0
slowP = 0.35; // subi 1
reverseP = 0.30; // subi 2

prob = random_range(0,1);//random_range(0,1);

if(prob >= 0 and prob < freezeP)
	image_index = 0;
if(prob >= freezeP and prob < freezeP + slowP)
	image_index = 1;
if(prob >= freezeP + slowP and prob < freezeP + slowP + reverseP)
	image_index = 2;