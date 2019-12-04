{
var suma = 0;
var contador = 0;
for(i=global.minA;i<=global.maxB;i++){
    for(j=global.minA;j<=global.maxB;j++){
        if(global.usuario[i,j]>-1){
            suma+=global.usuario[i,j];
            contador++;
        }
    }
}
var promedio = suma/contador;
if(promedio==0){
    promedio = (suma+1)/(contador+1);
}
if(promedio==1){
    promedio = suma/(contador+1);
}
var habilidad = ln(promedio/(1-promedio))
return habilidad;

}
