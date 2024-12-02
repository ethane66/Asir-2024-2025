<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    $precios = array(
    "azúcar"=>2.7, 
    "aceite"=>4, 
    "arroz"=>1.5, 
    "sal"=>0.8, 
    "pollo"=>2.4, 
    "tomates"=>1.3, 
    "pan"=>0.6);

    /*$precios = array(
    "azúcar" => 3.2, 
    "aceite" => 5.5, 
    "arroz" => 2.1, 
    "sal" => 1.0, 
    "pollo" => 3.8, 
    "tomates" => 2.9, 
    "pan" => 1.2,
    "leche" => 1.5,
    "huevos" => 2.5,
    "queso" => 4.0
    );*/

    #Ejercicio1
    $cuenta = 0;
    foreach ($precios as $producto => $precio) {
        if ($precio >= 2.5) {
            $cuenta++;
        }
    }
    echo "1. Número de productos con precio superior a 2.5 = ".$cuenta;
    echo "<br> <br> <br>";

    #Ejercicio2
    $cuenta2 = 0;
    foreach ($precios as $producto => $valor) {
        if ($valor >= 0.6 and $valor <= 2.1){
            $cuenta2++;
        }
    }
    $porcentaje = $cuenta2 / count($precios) * 100;
    echo "2. Porcentaje de productos con precio entre 0.6 y 2.1 = ".$porcentaje."%";
    echo "<br> <br> <br>";

    #Ejercicio4
    $suma = 0;
    $cantidad = count($precios);
    foreach ($precios as $producto => $precio) {
        $suma = $suma + $precio;
    }
    $preciomedio = $suma/$cantidad;
    echo "4. Precio medio de los productos = ".$preciomedio;
    echo "<br> <br> <br>";

    #Ejercicio5 usa lo del 4
    $contador2 = 0;
    foreach ($precios as $producto => $precio) {
        if ($precio >= $preciomedio){
        $contador2++;
        }
    }
    $porcentajepreciomedio = $contador2 / $cantidad * 100;
    echo '5. Porcentaje de productos con precio superior al precio medio. ('.$preciomedio.') = '.$porcentajepreciomedio.'%';
    echo "<br> <br> <br>";

    #Ejercicio6
    $preciomaximo = 0;
    foreach ($precios as $producto => $precio) {
        if ($precio > $preciomaximo) {
            $preciomaximo = $precio;
        }
    }
    echo "6. Producto más caro = ".$preciomaximo;
    echo "<br> <br> <br>";

    #Ejercicio7
    $preciominimo = $precios["azúcar"];
    $productomasbarato = 0;
    foreach ($precios as $producto => $precio) {
        if ($precio < $preciominimo){
            $preciominimo = $precio;
            $productomasbarato = $producto;
        }
    }
    echo "7. Producto más barato = ".$productomasbarato;
    echo "<br> <br> <br>";

    #Ejercicio11 usa lo del 6
    $preciomasalto = $preciomaximo;
    $productosmasaltos = "";
    foreach ($precios as $producto => $precio) {
        if ($precio == $preciomasalto){
        $productosmasaltos .= $producto. " ";
        }
    }
    
    echo "11. Precio del producto más caro = ".$preciomasalto." euros.<br>";
    echo "Productos con dicho precio: ".$productosmasaltos."<br>";
    echo "<br> <br> <br>";

    #Ejercicio8
    $superiora3 = false;

    foreach ($precios as $producto => $precio) {
        if ($precio > 3){
            $superiora3 = true;
        }
    }
    if ($superiora3 == true){
        echo "8. Hay productos con precio superior a 3 euros.";
    } else {
        echo "8. No hay productos con precio superior a 3 euros.";
    }
    echo "<br> <br> <br>";

    #Ejercicio12 usa lo del 7
    $preciomasbajo = $preciominimo;
    $productosmasbajos = "";
    foreach ($precios as $producto => $precio) {
        if ($precio == $preciomasbajo){
        $productosmasbajos .= $producto. " ";
        }
    }

    echo "12. Precio del producto más barato = ".$preciomasbajo." euros.<br>";
    echo "Productos con dicho precio: ".$productosmasbajos."<br>";
    echo "<br> <br> <br>";

    #Ejercicio9
    $superiora3_2 = false;

    foreach ($precios as $producto => $precio) {
        if ($precio > 3){
            $superiora3_2 = true;
        }
    }
    if ($superiora3_2 == true){
        echo "9. Hay productos con precio superior a 3 euros.<br>";
        echo "&nbsp;&nbsp;Nombre&nbsp;&nbsp;Precio<br>";
        foreach ($precios as $producto => $precio) {
            if ($precio > 3){
                echo "&nbsp;&nbsp;".$producto."&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;".$precio."€ <br>";
            }
        }
    } else {
        echo "9. No hay productos con precio superior a 3 euros.";
    }
    echo "<br> <br> <br>";

    #Ejercicio10
    $superiora1_5 = false;

    foreach ($precios as $producto => $precio) {
        if ($precio > 1.5){
            $superiora1_5= true;
        }
    }
    if ($superiora1_5 == true){
        echo "10. Hay productos con precio inferior a 1,5 euros.<br>";
        echo "&nbsp;&nbsp;Nombre&nbsp;&nbsp;Precio<br>";
        foreach ($precios as $producto => $precio) {
            if ($precio < 1.5){
                echo "&nbsp;&nbsp;".$producto."&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;".$precio."€ <br>";
            }
        }
    } else {
        echo "10. No hay productos con precio inferior a 1,5 euros.";
    }
    echo "<br> <br> <br>";

    #Ejercicio13
    $hay_sal = false;
    $precio_sal = 0;
    foreach ($precios as $producto => $precio) {
        if ($producto == "sal") {
            $hay_sal = true;
            $precio_sal = $precio;
            break;
        }
    }

    if ($hay_sal = true) {
        echo "13. Hay sal y su precio es $precio_sal euros.";
    } else {
        echo "13. No hay sal.";
    }
    ?>
</body>
</html>