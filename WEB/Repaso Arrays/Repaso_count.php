<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Repaso Arrays</title>
</head>
<body>

<p>1. Programar un script en PHP que permita contar y mostrar el número de productos con precios superiores e iguales a 2.5 euros.</p>

<?php 
$precios = array("azúcar"=>2.7, "aceite"=>4, "arroz"=>1.5, "sal"=>0.8,
"pollo"=>2.4, "tomates"=>1.3, "pan"=>0.6);

$contador=0;

    foreach( $precios as $indice => $valor){
        if ($valor >= 2.5){
            $contador++;
        }
    }

    echo "Hay $contador numero de productos superior a 2.5"



?>

</body>
</html>