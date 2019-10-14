image_index = subimg_index;
steps++;
if( steps mod 2 == 0)
	subimg_index++;
if(subimg_index == subimg_total-1)
	instance_destroy();