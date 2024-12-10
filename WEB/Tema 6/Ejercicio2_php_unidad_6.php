<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ejercicio 2 - Unidad 6</title>
</head>
<body>
    <?php
        if (empty($_POST['OPERACION'])) {
        echo "Error no puede estar vacio";
    } else {
        $operacion=$_POST['operacion'];
    if ($operacion=='sumar') {
        $resultado=sumar($numero1,$numero2);
        echo 'suma'.$numero1.'+'.$numero2. '=' .$resultado;
    } elseif($operacion=='restar') {
        $resultado=restar($numero1,$numero2);
        echo 'resta'.$numero1.'-'.$numero2. '=' .$resultado;
    } else {
        $resultado=multiplicar($numero1,$numero2);
        echo 'producto'.$numero1.'X'.$numero2. '=' .$resultado;
    
    }
    }




    ?>
</body>
</html>