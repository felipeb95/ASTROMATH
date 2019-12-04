{

var promedio = argument0/argument1;
if(promedio==0){
    promedio = (argument0+1)/(argument1+1);
}
if(promedio==1){
    promedio = argument0/(argument1+1);
}
var dificultad = ln((1-promedio)/promedio)
return dificultad;

}
