<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Practica 1 Tema 3</title>
</head>
<body>
    <?php
        $lado=$_POST['lado'];
        $area=pow($lado,2);

        echo 'El lado del cuadrado es: '.$lado;
        echo '<br>';
        echo 'El area es '.$area;



    ?>
</body>
</html>