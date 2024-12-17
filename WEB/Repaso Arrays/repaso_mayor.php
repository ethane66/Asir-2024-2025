<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Repaso Arrays</title>
</head>
<body>

<p>6. Programar un script en PHP que permita calcular y mostrar el precio del producto más caro.</p>

<?php 
$precios = array("azúcar"=>2.7, "aceite"=>4, "arroz"=>1.5, "sal"=>0.8,
"pollo"=>2.4, "tomates"=>1.3, "pan"=>0.6);

//$precioMasCaro = PHP_INT_MIN; esto significa que pone el valor mas bajo que se puede dar en php (la manera mas profesional)
 $precioMasCaro = $precios["azúcar"]; //Forma carmen y como quiere ella en el examen

foreach ($precios as $indice => $valor){
    if ($valor > $precioMasCaro){
        $precioMasCaro = $valor;
    }
}
echo "El precio mas caro es $precioMasCaro";

?>

</body>
</html>