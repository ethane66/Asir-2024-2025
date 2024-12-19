<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Practica 2 PHP UT5</title>
</head>
<body>
    <P>
    1. Programar un script en PHP que permita contar y mostrar el número de productos con precios superiores e iguales a 2.5 euros.
    </P>

    <?php
        $precios = array("azúcar"=>2.7, "aceite"=>4, "arroz"=>1.5, "sal"=>0.8,
        "pollo"=>2.4, "tomates"=>1.3, "pan"=>0.6);

        $contador=0;

        foreach($precios as $indice => $valor){
            if($valor > 2.5){
                $contador++;
            }
        }
        echo 'Numero de productos superior a 2.5 es '.$contador;
    ?>
    <br><br><br>

    <p>
    2. Programar un script en PHP que permita calcular y mostrar el porcentaje de productos entre
    0.6 y 2.1 euros.
    </p>

    <?php
        $preciosEntre=0;
        $contador=count($precios);
        foreach($precios as $indice => $valor){
            if($valor>=0.6 and $valor <= 2.1){
                $preciosEntre++;
            }
        }
        $porcentaje=($preciosEntre/$contador)*100;
        echo 'El porcentaje de productos es '.$porcentaje;
    ?>

    <p>
    3. Programar un script en PHP que permita contar y mostrar el número de productos con precios inferiores a 1 euro, con precios entre 1 y 4 euros y con precios superiores a 4 euros.
Obligatorio utilizar condicionales anidadas.
    </p>

    <?php
        $menorQueUno=0;
        $entreUnoYCuatro=0;
        $superiorA4=0;

        foreach($precios as $indice => $valor){
            if($valor < 1){
                $menorQueUno++;
            } elseif($valor >= 1 and $valor < 4){
                $entreUnoYCuatro++;
            } else {
                if($valor >= 4){
                    $superiorA4++;
                }
            }
        }
        echo 'Numero de productos con precios inferiores a 1 euro: '.$menorQueUno.'<br>';
        echo 'Numero de productos con precios entre 1 y 4 euros: '.$entreUnoYCuatro.'<br>';
        echo 'Numero de productos con precios superiores a 4 euros: '.$superiorA4.'<br>';
    ?>

    <p>
    4. Programar un script en PHP que permita calcular y mostrar el precio medio de los productos.
    </p>

    <?php
        $contador=count($precios);
        $suma=0;
       
        foreach($precios as $indice => $valor){
            $suma = $suma + $valor;
        }
        $media= $suma/$contador;
        echo 'Precio medio es '.$media;
    ?>
    <p>
    5. Programar un script en PHP que permita calcular y mostrar el porcentaje de productos con
precios superiores o iguales al precio medio.

    </p>

    <?php
        $contador=count($precios);
        $suma=0;
        $superiorMedia = 0;
       
        foreach($precios as $indice => $valor){
            $suma = $suma + $valor;
        }
        $media= $suma/$contador;
        echo 'Precio medio es '.$media. '<br>';
        
        foreach($precios as $indice => $valor){
            if($valor > $media){
                $superiorMedia++;
            }
        }
        $porcentaje = ($superiorMedia/$contador)*100;
        echo 'Precios superior a la media '.$superiorMedia. '<br>';
        echo 'Porcentaje superior a la media es '.$porcentaje;
    ?>

    <p>
    6. Programar un script en PHP que permita calcular y mostrar el precio del producto más caro.
    </p>

    <?php
        $masCaro=$precios['azúcar'];

        foreach($precios as $indice => $valor){
            if($valor > $masCaro){
                $masCaro = $valor;
            }
        }
        echo 'El precio mas caro es '.$masCaro;
    ?>

    <p>
    7. Programar un script en PHP que permita calcular y mostrar el precio del producto más barato.
    </p>

    <?php
    $masBarato=$precios['azúcar'];

    foreach($precios as $indice => $valor){
        if($valor < $masBarato){
            $masBarato = $valor;
        }
    }
    echo 'El precio mas barato es '.$masBarato;
    ?>

    <p>
    8. Programar un script en PHP que permita mostrar si hubo o no algún producto con precios
superiores a 3 euros. Si hay algún producto muestra el siguiente mensaje: "Hay algún producto con precios superiores a 3 euros" y sino hay ninguno muestra el siguiente mensaje
"No hay ningún producto con precios superiores a 3 euros". Obligatoriamente debes utilizar
una variable de tipo boolean.

    </p>

    <?php
        $preciosSuperior3 = FALSE;

        foreach($precios as $indice => $valor){
            if($valor > 3){
                $preciosSuperior3 = TRUE;
                break;
            }
        }

        if($preciosSuperior3 == TRUE){
            echo 'Hay algún producto con precios superiores a 3 euros';
        } else {
            echo 'No hay ningún producto con precios superiores a 3 euros';
        }
    ?>

    <p>
    11. Programar un script en PHP que permita calcular y mostrar el precio del producto más caro.
    Y el nombre de todos los productos con dicho precio.
    </p>
    <?php
        $masCaro=$precios['azúcar'];
        $productoMasCaro="";

        foreach($precios as $indice => $valor){
            if($masCaro < $valor){
                $masCaro = $valor;
            }
        }

        foreach($precios as $indice => $valor){
            if($valor == $masCaro){
                $productoMasCaro = $indice;
            }
        }
        echo 'El producto mas caro es '.$productoMasCaro. ' y cuesta '.$masCaro;


    ?>

    <p>
    12. Programar un script en PHP que permita calcular y mostrar el precio del producto más barato. Y el nombre de todos los productos con dicho precio.
    </p>

    <?php
    $masBarato=$precios['azúcar'];
    $productomasbarato="";

    foreach($precios as $indice => $valor){
        if($valor < $masBarato){
            $masBarato = $valor;
        }
    }

    foreach($precios as $indice => $valor){
        if($valor == $masBarato){
            $productomasbarato = $indice;
        }
    }
    echo 'El producto mas barato es '.$productomasbarato. ' y cuesta '.$masBarato;
    ?>

    <p>
    13. Programar un script en PHP que permita mostrar si hay o no “sal”. Si hay “sal” muestra el
siguiente mensaje: "Hay sal y su precio es xxx.dd euros" y sino hay muestra el siguiente
mensaje "No hay sal". Obligatoriamente debes utilizar una variable de tipo boolean.

    </p>

    <?php
        $haysal=false;
        $precio_sal=0;

        foreach($precios as $indice => $valor){
            if($indice == "sal"){
                $haysal = TRUE;
                $precio_sal = $valor;
            }
        }
        if($haysal == TRUE){
            echo 'Hay sal y cuesta '.$precio_sal;
        }
        else {
            echo 'No hay sal';
        }

    ?>
</body>
</html>