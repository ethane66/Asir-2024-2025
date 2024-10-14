<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Practica_1</title>
</head>

<body>

    <?php

    define('PI', 3.1416); //Constante
    $radio = $_POST['lado'];
    $longitud = 2 * PI * $radio;
    $area = PI * pow($radio, 2);
    $volumen = 4 / 3 * PI * pow($radio, 3);
    echo 'Radio = ' . $radio . '<br/><br/>';
    echo '&nbsp;&nbsp;&nbsp; Longitud = ' . $longitud . '<br/>';
    echo '&nbsp;&nbsp;&nbsp; Área = ' . $area . '<br/>';
    echo '&nbsp;&nbsp;&nbsp; Volumen = ' . $volumen . '<br/>';
    ?>

</body>

</html>