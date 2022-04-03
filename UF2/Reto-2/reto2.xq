(:Punto 1:)
let $p1 := "Punto 1"
return $p1,

let $xml :=  doc('D:\Code\ASYR-Marcas\UF2\Reto-2\reto2UF2.xml')/libros
for $libro in $xml/libro
order by $libro/nombre descending
return 
<infoautor>{$libro/descripcion/autor/text()} ({$libro/nombre/text()})</infoautor>
,

(:Punto 2:)
let $p2 := "Punto 2"
return $p2,

let $xml :=  doc('D:\Code\ASYR-Marcas\UF2\Reto-2\reto2UF2.xml')/libros
for $libro in $xml/libro
for $options in $libro/descripcion
order by $libro/paginas
return
if ( $options/autor != 'Autor 1' ) then (
  <infolibro> {$libro/nombre/text()} </infolibro>,<info>{$options/sinopsis/text()}</info>
) else (
   <infolibro> {$libro/nombre/text()} </infolibro>
)

