$precios = array("azúcar"=>2.7, "aceite"=>4, "arroz"=>1.5, "sal"=>0.8,
"pollo"=>2.4, "tomates"=>1.3, "pan"=>0.6);


1:Programar un script en PHP que permita contar y mostrar el número de productos con precios superiores e iguales a 2.5
euros.



2:Programar un script en PHP que permita calcular y mostrar el porcentaje de productos entre
0.6 y 2.1 euros.


<?php
$precios = array(
    "azúcar" => 2.7,
    "aceite" => 4,
    "arroz" => 1.5,
    "sal" => 0.8,
    "pollo" => 2.4,
    "tomates" => 1.3,
    "pan" => 0.6
);

$c = 0;
foreach ($precios as $indice => $valor):
    if ($valor >= 0.6 && $valor <= 2.1): // Corregido: $valor y &&
        $c++; // Corregido: incremento
    endif;
endforeach;

$porcentaje = ($c / count($precios)) * 100;
echo "Porcentaje de productos entre 0.6 y 2.1 euros: " . $porcentaje . "%"; // Unificada y formateada
?>

// 4. Programar un script en PHP que permita calcular y mostrar el precio medio de los productos.

<?php
$precios = array(
    "azúcar" => 2.7,
    "aceite" => 4,
    "arroz" => 1.5,
    "sal" => 0.8,
    "pollo" => 2.4,
    "tomates" => 1.3,
    "pan" => 0.6
);

$ac = 0;
foreach ($precios as $indice => $valor):
    $ac += $valor; // Corregido: incremento
endforeach;
$media = $ac / count($precios);

echo "precio medio = $media &euro;";
echo "<br>";
echo 'precio medio = ' . $media . ' &euro;';
?>


6. Programar un script en PHP que permita calcular y mostrar el precio del producto más caro.

<?php
$precios = array(
    "azúcar" => 2.7,
    "aceite" => 4,
    "arroz" => 1.5,
    "sal" => 0.8,
    "pollo" => 2.4,
    "tomates" => 1.3,
    "pan" => 0.6
);

$max = 0;
foreach ($precios as $indice => $valor):
    if ($valor > $max): // Corregido: >
        $max = $valor; // Corregido: asignación
    endif;
endforeach;

echo "Precio del producto más caro: $max &euro;";
echo "<br>";
echo 'Precio del producto más caro: ' . $max . ' &euro;';
?>