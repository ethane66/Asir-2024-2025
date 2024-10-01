<html>

<head>
    <meta http-equiv='content-type' content='text/html;
charset=utf-8'>
</head>

<body>
    <?php
    $num1=9;
    $num2=2;
    $suma=$num1+$num2;
    $resta=$num1-$num2;
    $multiplicacion=$num1*$num2;
    $division=$num1/$num2;
    $resto=$num1%$num2;
    
    echo '<br>';
    echo 'comillas simples:<br>';
    echo '<br>';

    echo 'La suma de ' . $num1 . ' y ' . $num2 . ' es ' . $suma . '<br>';
    echo 'La resta de ' . $num1 . ' y ' . $num2 . ' es ' . $resta . '<br>';
    echo 'La multiplicación de ' . $num1 . ' y ' . $num2 . ' es ' . $multiplicacion . '<br>';
    echo 'La división de ' . $num1 . ' y ' . $num2 . ' es ' . $division . '<br>';
    echo 'El resto de la división de ' . $num1 . ' y ' . $num2 . ' es ' . $resto . '<br>';
    echo '<br>';
    echo 'comillas dobles:<br>';
    echo '<br>';
    echo "La suma de $num1 y $num2 es $suma<br>";
    echo "La resta de $num1 y $num2 es $resta<br>";
    echo "La multiplicación de $num1 y $num2 es $multiplicacion<br>";
    echo "La división de $num1 y $num2 es $division<br>";
    echo "El resto de la división de $num1 y $num2 es $resto<br>";
    

    
    ?>
</body>

</html>