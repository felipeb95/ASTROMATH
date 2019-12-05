randomize();
list = ds_list_create();

var i =0;
var sep = 0.01;
testId = undefined;
var number = 1;

for(i=0;i<9;i++){
	var thisBall = instance_create_depth(0,0,-100,oBall)
	with(thisBall){
		path_position = 0 + i*sep;
		image_index = (i mod 2 == 0) ? 0 : 1;
		if(i mod 2 == 0){
			symbol = string(number);
			number++;
		}
		else
			symbol = "x";
	}
	if(i==3)
		testId = thisBall;
	ds_list_add(list,thisBall);
}
