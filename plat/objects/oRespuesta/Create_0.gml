if(numAlternativa==global.respuestaCorrecta) num = global.r;
else{
	num = irandom_range(global.r-10,global.r+10);	
}
if(num<0) num = irandom_range(0,global.r+20);
if(num==global.r and numAlternativa!=global.respuestaCorrecta) num++;


