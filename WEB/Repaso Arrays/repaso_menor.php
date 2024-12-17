<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Repaso Arrays</title>
</head>
<body>

<p>6. Programar un script en PHP que permita calcular y mostrar el precio del producto más caro y muestre el nombre que se le asocia .</p>

<?php 
$precios = array("azúcar"=>2.7, "aceite"=>4, "arroz"=>1.5, "sal"=>0.8,
"pollo"=>2.4, "tomates"=>1.3, "pan"=>0.6);

$precioMasBajo = $precios["azúcar"];
$productoMasBaratos = ""; //Con carmen no sirve esto

foreach ($precios as $indice => $valor){
    if($valor < $precioMasBajo){
        $precioMasBajo = $valor;
        $productoMasBarato = $indice; //Esto con carmen no sirve
    
    }

}

echo "El precio mas bajo es $precioMasBajo y corresponde al producto $productoMasBarato";

?>

</body>
</html>