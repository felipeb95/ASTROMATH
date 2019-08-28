Para probar local:
1.- Abrir database.php y cambiar el valor de $direccion
2.- En el proyecto GM en obj_loading:create cambiar la direccion por la misma

Para exportar proyectos:
1.- En carpeta game-vNum borrar carpeta html5game
2.- Exportar en la carpeta
3.- Abrir index.html y copiar línea que carga el .js
4.- Eliminar index.html y reemplazar línea en index.php
5.- Agregar a parámetros GET de la línea pegada un "&v=blablabla"