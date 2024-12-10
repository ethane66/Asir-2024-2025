Ejercicio 1:
    $numero = 10;
    if ($numero<10):
        $numero=$numero/2;
    endif;
    echo " \$numero = $numero";
Ejercicio 2:
    $numero = 10;
    if ($numero<10):
        $numero=$numero/2;
    else:
        $numero=$numero*2;
    endif;
    echo " \$numero = $numero";
Ejercicio 3:
    $numero = 10;
    if ($numero<10):
        $numero=$numero/2;
    elseif($numero>10):
        $numero=$numero*2;
    else:
        $numero=pow($numero,2);
    endif;
    echo " \$numero = $numero";
Ejercicio 4:
    $numero = -4;
    if ($numero>0):
        echo $numero.' n&uacute;mero positivo';
    else:
        echo $numero.' n&uacute;mero negativo o cero';
    endif;
Ejercicio 5:
    $numero = 0;
    if ($numero>0):
        echo $numero.' n&uacute;mero positivo';
    endif;
Ejercicio 6:
    $numero = 5;
    if ($numero>0):
        echo $numero.' n&uacute;mero positivo';
    elseif($numero<0):
        echo $numero.' n&uacute;mero negativo';
    else:
        echo $numero.' n&uacute;mero cero';
    endif;
Ejercicio 7:
    $numero = 5;
    if ($numero>0):
        echo $numero.' n&uacute;mero positivo';
    endif;
Ejercicio 8:
    $numero = 0;
    if ($numero>0):
        echo $numero.' n&uacute;mero positivo';
    else:
        echo $numero.' n&uacute;mero negativo o cero';
    endif;
Ejercicio 9:
    $numero = 0;
    if ($numero>0):
        echo $numero.' n&uacute;mero positivo';
    elseif($numero<0):
        echo $numero.' n&uacute;mero negativo';
    else:
        echo $numero.' n&uacute;mero cero';
    endif;
Ejercicio 10:
    $numero = -4;
    if ($numero>0):
        echo $numero.' n&uacute;mero positivo';
    endif;
Ejercicio 11:
    $numero = 5;
    if ($numero>0):
        echo $numero.' n&uacute;mero positivo';
    else:
        echo $numero.' n&uacute;mero negativo o cero';
    endif;

Ejercicio 12:
    $numero = -4;
    if ($numero>0):
    echo $numero.' n&uacute;mero positivo';
    elseif($numero<0):
    echo $numero.' n&uacute;mero negativo';
    else:
    echo $numero.' n&uacute;mero cero';
    endif;