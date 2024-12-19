<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <P>Ejercicios que pueden entar si o si en la recu son 1,4,6,7 de la practica 2.</P>
    <P>
    1. Programar un script en PHP que permita contar y mostrar el número de productos con precios superiores e iguales a 2.5 euros.
    </P>

    <?php
        $precios = array("azúcar"=>2.7, "aceite"=>4, "arroz"=>1.5, "sal"=>0.8,
        "pollo"=>2.4, "tomates"=>1.3, "pan"=>0.6);

        $preciosSuperior=0;

        foreach($precios as $indice => $valor):
            if($valor > 2.5):
                $preciosSuperior++;
            endif;
        endforeach;

        echo 'Cantidad de productos superior a 2.5 son '.$preciosSuperior;
    ?>

    <p>
    4. Programar un script en PHP que permita calcular y mostrar el precio medio de los productos.
    </p>

    <?php
        $contador=count($precios);
        $sumatorio=0;

        foreach($precios as $indice => $valor){
            $sumatorio = $sumatorio + $valor;
        }

        $media= $sumatorio/$contador;

        echo 'El precio medio es de '.$media;
    ?>

    <p>
    6. Programar un script en PHP que permita calcular y mostrar el precio del producto más caro.
    </p>

    <?php
        $masCaro=$precios['azúcar'];
        $productoMasCaro="";
        foreach($precios as $indice => $valor):
            if($valor > $masCaro):
                $masCaro = $valor;
            endif;
        endforeach;

        foreach($precios as $indice => $valor):
            if($valor == $masCaro):
            $productoMasCaro = $indice;
        endif;
    endforeach;

        echo 'El precio mas caro es '.$masCaro. ' y es '.$productoMasCaro;
    ?>

    <p>
    7. Programar un script en PHP que permita calcular y mostrar el precio del producto más barato.
    </p>

    <?php
        $masBarato=$precios['azúcar'];
        $productoMasBarato="";

        foreach($precios as $indice => $valor){
            if($valor < $masBarato){
                $masBarato = $valor;
            }
        }

        foreach($precios as $indice => $valor){
            if($valor == $masBarato){
                $productoMasBarato = $indice;
            }
        }

        echo 'El precio mas barato es '.$masBarato. ' y es '.$productoMasBarato;

    ?>
</body>
</html>