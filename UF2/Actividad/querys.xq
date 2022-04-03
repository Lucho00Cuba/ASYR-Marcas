(:Punto 4 XPATH:)

doc('D:\Code\ASYR-Marcas\UF2\Actividad\eeuu.xml')/pais/capital,
doc('D:\Code\ASYR-Marcas\UF2\Actividad\eeuu.xml')/pais/imagenes/imagen,
doc('D:\Code\ASYR-Marcas\UF2\Actividad\eeuu.xml')/pais/imagenes/imagen[position()<=3],
doc('D:\Code\ASYR-Marcas\UF2\Actividad\eeuu.xml')/pais/imagenes/imagen/url,

(:Punto 5 XQUERY:)

let $xml :=  doc('D:\Code\ASYR-Marcas\UF2\Actividad\eeuu.xml')/pais
for $gps in $xml/coordenadas
return $gps/latitud | $gps/longitud, (: OR return $n :)

let $xml :=  doc('D:\Code\ASYR-Marcas\UF2\Actividad\eeuu.xml')/pais
for $imagen in $xml/imagenes/imagen
return $imagen/nombre | $imagen/descripcion,

let $xml :=  doc('D:\Code\ASYR-Marcas\UF2\Actividad\eeuu.xml')/pais
for $imagen in $xml/imagenes/imagen
return 
if ($imagen/url = '') then (
  $imagen
)
