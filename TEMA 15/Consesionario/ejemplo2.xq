xquery version "1.0" encoding "utf-8";

(: Ejemplo 1 :)
for $x at $i in //coche
return <coche>{$i} .- {$x/marca/text()}</coche>,

(: Ejemplo 2 :)
for $x in (10 to 12)
return <numeros>{$x}</numeros>,

(: Ejemplo 3 :)
for $x in (5)
for $y in (1,2,3)
return <tabla>{$x}*{$y}={$x*$y}</tabla>,

(: Ejemplo 4 con let :)
let $x:=(1,3,5)
return <impares>{$x}</impares>,

(: Ejemplo 4 con for :)
for $x in (1,3,5)
return <impares>{$x}</impares>,

(: Ejemplo 5 where :)
for $x in //coche
where $x/combustible="Gasolina"
return $x/@matricula,

(: Ejemplo 6 order :)
for $x in //coche
order by $x/precio descending
return ($x/@matricula, $x/precio)