<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contador de Productos</title>
</head>
<body>
<p>
1. Programar un script en PHP que permita contar y mostrar el número de productos con precios superiores e iguales a 2.5 euros.
</p>

    <?php
    $precios = array("azúcar"=>2.7, "aceite"=>4, "arroz"=>1.5, "sal"=>0.8,
    "pollo"=>2.4, "tomates"=>1.3, "pan"=>0.6);
    $contador=0;

    foreach ($precios as $indice => $valor):
        if($valor>=2.5):
            $contador++;
        endif;
    endforeach;
    echo 'Total productos precio mayor a 2.5: '.$contador;
    ?>

<P>
2. Programar un script en PHP que permita calcular y mostrar el porcentaje de productos entre
0.6 y 2.1 euros.
</P>
<?php
$precios = array("azúcar"=>2.7, "aceite"=>4, "arroz"=>1.5, "sal"=>0.8,
"pollo"=>2.4, "tomates"=>1.3, "pan"=>0.6);
$contador=0;
$totalproductos = count($precios);
foreach ($precios as $indice => $valor):
    if ($valor >= 0.6 and $valor <= 2.1):
        $contador++;
    endif;
endforeach;
$porcentaje = ($contador / $totalproductos) * 100;
echo 'Porcentaje de productos entre 0.6 y 2.1 es ' . $porcentaje . '%';
?>

<p>
4. Programar un script en PHP que permita calcular y mostrar el precio medio de los productos. 
</p>

<P>
11. Programar un script en PHP que permita calcular y mostrar el precio del producto más caro.
Y el nombre de todos los productos con dicho precio
</P>

<?php
$precios = array("azúcar"=>2.7, "aceite"=>4, "arroz"=>1.5, "sal"=>0.8,
"pollo"=>2.4, "tomates"=>1.3, "pan"=>0.6);

//inicializacion del variable $mayor que almacena el mayor de todos los productos, se inicializa con el primero del array que es azucar y valor 2.7
$mayor = $precios ["azucar"]; //Se repite una vez

foreach ($precios as $indice => $valor): //Se repite varias veces (7 elementos se repite 7 veces)
    if ($valor > $mayor): //Si en algfun caso el valor es mayor que el valor mayor (inicial 2.7)
        $mayor = $valor; //Asigna el valor de valor que dio mas alto que mayor en el caso del aceite pasa a valer 4 entonces mayor es igual a 4 ahora
    endif;
endforeach;
echo "precio del producto mas caro =$mayor &euro;";

echo "</br>Es/son: ";
foreach ($precios as $indice => $valor): //Se repite 7 veces nº de productos del array
    if($valor == $mayor):
        echo "$indice &nbsp;&nbsp;"; //El echo se repita una o mas veces, depende de cuantos productos valen 4
    endif;
endforeach;
?>

<p>
12. Programar un script en PHP que permita calcular y mostrar el precio del producto más barato. Y el nombre de todos los productos con dicho precio.
</p>

<?php
$precios = array("azúcar"=>2.7, "aceite"=>4, "arroz"=>1.5, "sal"=>0.8,
"pollo"=>2.4, "tomates"=>1.3, "pan"=>0.6);

//inicializacion del variable $mayor que almacena el mayor de todos los productos, se inicializa con el primero del array que es azucar y valor 2.7
$menor = $precios ["azucar"]; //Se repite una vez

foreach ($precios as $indice => $valor): //Se repite varias veces (7 elementos se repite 7 veces)
    if ($valor < $menor): //Si en algfun caso el valor es mayor que el valor mayor (inicial 2.7)
        $mayor = $valor; //Asigna el valor de valor que dio mas alto que mayor en el caso del aceite pasa a valer 4 entonces mayor es igual a 4 ahora
    endif;
endforeach;
echo "precio del producto mas caro =$menor &euro;";

echo "</br>Es/son: ";
foreach ($precios as $indice => $valor): //Se repite 7 veces nº de productos del array
    if($valor == $menor):
        echo "$indice &nbsp;&nbsp;"; //El echo se repita una o mas veces, depende de cuantos productos valen 4
    endif;
endforeach;



?>
</body>
</html>



