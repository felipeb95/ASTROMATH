var i =0;
var sep = 0.01;
for(i=0;i<5;i++){
	var thisBall = instance_create_depth(0,0,-100,oBall)
	with(thisBall){
		image_index = i+1;
		path_position = 0 + i*sep;		
	}
}