<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Operadores Básicos</title>
</head>
<body>
    <?php
    // Los operadores aritméticos clásicos:
    // +: Suma
    // -: Resta
    // *: Multiplicación
    // /: División
    // %: Cociente o módulo
    // ++: Incremento unitario
    // --: Decremento unitario
    // Los operadores de comparación clásicos:
    // ==: Igualdad
    // !=: Desigualdad
    // <: Menor que
    // >: Mayor que
    // <=: Menor o igual que
    // >=: Mayor o igual que
    // ===: Devuelve TRUE si los dos valores que compara son idénticos en contenido y
    // tipo y FALSE si no lo son.
    // Los operadores lógicos clásicos:
    // !: No, negación
    // && ó and: y
    // || ó or: o

    echo"<br/>".(5+4);
    echo"<br/>".(5-4);
    echo"<br/>".(5*4);
    echo"<br/>".(10/3);

    echo"<br/>".(5==4);
    echo"<br/>".(-1==true);
    echo"<br/>".(array(2,3,4)==true);

    echo"<br/>".(5<4);

    echo"<br/>".((3-2==1) and (3*2==5));

    echo"<br/>";

    echo"<br/>".(TRUE OR FALSE);
    ?>


<h1>Operadores pt 2</h1>

<?php
    $premisa1=TRUE;
    $premisa2=FALSE;
    $resultado=$premisa1 and $premisa2; //= precede a and
    echo (integer)$resultado;
    echo '<br />';
    $resultado=$premisa1 && $premisa2; //&& precede a =
    echo (integer)$resultado;
    



?>


</body>
</html></body></html>