<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Repaso Arrays</title>
</head>
<body>

<p>4. Programar un script en PHP que permita calcular y mostrar el precio medio de los productos.</p>

<?php 
$precios = array("azúcar"=>2.7, "aceite"=>4, "arroz"=>1.5, "sal"=>0.8,
"pollo"=>2.4, "tomates"=>1.3, "pan"=>0.6);

$numElementos = count($precios);
$sumatorio = 0;

foreach( $precios as $indice => $valor){
    $sumatorio = $sumatorio + $valor;
}
    $media = $sumatorio / $mnumElementos;

    echo "El precio medio de los productos es $media";
    echo 'El precio medio de los productos es ' . $media;
    echo 'Tenemos ' .$media. 'Como valor medio de los productos';
    echo $media . 'Es la media de los valor del array';



    if ($indice == "arroz" and $valor == 1){
        echo "oferta";
    }
?>

</body>
</html>