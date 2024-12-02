<!-- Ejercicio 1: -->
<?php
$numero = 10;
if ($numero < 10):
    $numero = $numero / 2;
endif;
echo " \$numero = $numero";
?>
<!-- Espacio para comentarios -->

Mostrara 10

<!-- Ejercicio 2: -->
<?php
$numero = 10;
if ($numero < 10):
    $numero = $numero / 2;
else:
    $numero = $numero * 2;
endif;
echo " \$numero = $numero";
?>
<!-- Espacio para comentarios -->

Mostrara 20

<!-- Ejercicio 3: -->
<?php
$numero = 10;
if ($numero < 10):
    $numero = $numero / 2;
elseif ($numero > 10):
    $numero = $numero * 2;
else:
    $numero = pow($numero, 2);
endif;
echo " \$numero = $numero";
?>
<!-- Espacio para comentarios -->

Mostrara 20

<!-- Ejercicio 4: -->
<?php
$numero = -4;
if ($numero > 0):
    echo $numero . ' n&uacute;mero positivo';
else:
    echo $numero . ' n&uacute;mero negativo o cero';
endif;
?>
<!-- Espacio para comentarios -->

Mostrara Negativo o cero

<!-- Ejercicio 5: -->
<?php
$numero = 0;
if ($numero > 0):
    echo $numero . ' n&uacute;mero positivo';
endif;
?>
<!-- Espacio para comentarios -->

Mostrara (no hay salida)


<!-- Ejercicio 6: -->
<?php
$numero = 5;
if ($numero > 0):
    echo $numero . ' n&uacute;mero positivo';
elseif ($numero < 0):
    echo $numero . ' n&uacute;mero negativo';
else:
    echo $numero . ' n&uacute;mero cero';
endif;
?>
<!-- Espacio para comentarios -->

Mostrara Numero positivo

<!-- Ejercicio 7: -->
<?php
$numero = 5;
if ($numero > 0):
    echo $numero . ' n&uacute;mero positivo';
endif;
?>
<!-- Espacio para comentarios -->

Mostrara Numero positivo


<!-- Ejercicio 8: -->
<?php
$numero = 0;
if ($numero > 0):
    echo $numero . ' n&uacute;mero positivo';
else:
    echo $numero . ' n&uacute;mero negativo o cero';
endif;
?>
<!-- Espacio para comentarios -->

Numero negativo o cero


<!-- Ejercicio 9: -->
<?php
$numero = 0;
if ($numero > 0):
    echo $numero . ' n&uacute;mero positivo';
elseif ($numero < 0):
    echo $numero . ' n&uacute;mero negativo';
else:
    echo $numero . ' n&uacute;mero cero';
endif;
?>
<!-- Espacio para comentarios -->

Numero negativo o cero

<!-- Ejercicio 10: -->
<?php
$numero = -4;
if ($numero > 0):
    echo $numero . ' n&uacute;mero positivo';
endif;
?>
<!-- Espacio para comentarios -->

No hay salida

<!-- Ejercicio 11: -->
<?php
$numero = 5;
if ($numero > 0):
    echo $numero . ' n&uacute;mero positivo';
else:
    echo $numero . ' n&uacute;mero negativo o cero';
endif;
?>
<!-- Espacio para comentarios -->

5 numero positivo

<!-- Ejercicio 12: -->
<?php
$numero = -4;
if ($numero > 0):
    echo $numero . ' n&uacute;mero positivo';
elseif ($numero < 0):
    echo $numero . ' n&uacute;mero negativo';
else:
    echo $numero . ' n&uacute;mero cero';
endif;
?>
<!-- Espacio para comentarios -->

-4 numero negativo