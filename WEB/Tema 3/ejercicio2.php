<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ejercicio 2</title>
</head>
<body>
<?php
    $lado = $_POST['l'];
    echo 'el Lado es: '.$lado;
    echo '<br/>';
    $area = $lado**2;
    echo 'el Área es: '.$area;
    ?>
</body>
</html>