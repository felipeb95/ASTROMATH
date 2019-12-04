randomize();
/* pelota devuelve id */
index = ds_list_find_index(list, testId);
var pos = testId.path_position;
instance_destroy(testId);

newBall = instance_create_depth(0,0,-100,oBall);
with(newBall){
	image_index = 0;
	path_position = pos;
	symbol = "N";
}

ds_list_replace(list,index,newBall);
deleted1 = ds_list_find_value(list,index-1);
deleted2 = ds_list_find_value(list,index+1);
instance_destroy(deleted1);
instance_destroy(deleted2);


ds_list_delete(list,index-1);
ds_list_delete(list,index+1);
show_debug_message("list size: "+string(ds_list_size(list)));
firstBall = ds_list_find_value(list,1);
var firstPos = firstBall.path_position;
var sep = 0.01;
var i = 0;

/*
for(i=0;i<ds_list_size(list);i++){
	var ball = ds_list_find_value(list,i);
	with(ball){
		path_position = firstPos + sep*i;
	}
}
*/