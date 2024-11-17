<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Practica 4 Tema 2</title>
</head>
<body>
    <?php
        define("PI", 3.1416);
        //datos de la entrada
        $radio = 2;

        //comillas simples
        echo 'el radio es: ' . $radio;
        echo '<br/>';
        //calculos
        $longitud = 2 * PI * $radio;
        echo 'la longitud es: ' . $longitud;
        echo '<br/>';
        $area = PI * $radio ** 2;
        //$area = PI * $radio * $radio;
        //$area = PI * pow($radio, 2);
        echo 'el area es: ' . $area;
        echo '<br/>';
        $volumen = 4 / 3 * PI * $radio ** 3;
        //$volumen = 4 / 3 * PI * $radio * $radio * $radio;
        //$volumen = 4 / 3 * PI * pow($radio, 3);
        echo 'el volumen es: ' . $volumen;
        echo "<br/>";echo "<br/>";
        //comillas dobles
        $radio = 2;
        echo "el radio es: $radio";
        echo "<br/>";
        //calculos
        $longitud = 2*PI*$radio;
        echo "la longitud es: $longitud";
        echo "<br/>";
        $area = PI*$radio**2;
        //$area = PI*$radio*$radio;
        //$area = PI*pow($radio,2);
        echo "el area es: $area";
        echo "<br/>";
        $volumen = 4/3*PI*$radio**3;
        //$volumen = 4/3*PI*$radio*$radio*$radio;
        //$volumen = 4/3*PI*pow($radio,3);
        echo "el volumen es: $volumen";




    ?>
</body>
</html>