<!-- Ejercicio 1: -->
<?php
     $numero=5;
    if ($numero<10){
    $numero=$numero/2;
     }
    echo " \$numero = $numero"; 
?>
El resultado seria: 2.5


<!-- Ejercicio 2: -->
 <?php
    $a=3;
    $b=5;
    if ($a*$b==25){
        $a=$a*4;
        $b=$b*2;
    }
    echo "\$a= $a \$b= $b" 
?>
a= 3 b=5

<!-- Ejercicio 3: -->
 
<?php
    $numero = 5;
     if ($numero<10)
    {$numero=$numero/2;}
     else
    {$numero=$numero*2;}
     echo " \$numero = $numero"; 
 ?>

 El resultado seria 2.5

<!-- Ejercicio 4: -->
<?php 
    $edad=15;
     if ($edad<1)
    {$etapa="Bebé";}
     elseif ($edad<13)
    {$etapa="Niñez";}
     elseif ($edad<17)
    {$etapa="Adolescencia";}
     elseif ($edad<22)
    {$etapa="Juventud";}
     elseif ($edad<71)
    {$etapa="Madurez";}
     else
    {$etapa="Vejez";}
     echo "Edad = $edad &nbsp;&nbsp;&nbsp; Etapa = $etapa"; 
?>
El resultado seria Edad = 15 etapa = Niñez

<!-- Ejercicio 5: -->
<?php 
    $ciudad="Soria";
     switch ($ciudad){
     case "Lugo":
    $comunidad="Galicia";
    break;
     case "Huesca":
    $comunidad="Aragón";
    break;
     case "Soria":
    $comunidad="Castilla León";
    break;
     case "Almería":
    $comunidad="Andalucía";
    break;
     default:
    $comunidad="Otra"; }
     echo "Ciudad = $ciudad &nbsp;&nbsp;&nbsp; Comunidad = $comunidad"; 
?>
Ciudad = Soria   Comunidad = Castilla León

<!-- Ejercicio 6: -->
<?php
     $numero=23;
     if ($numero<10){
    $numero=$numero/2; }
    echo " \$numero = $numero"; 
?>

El resultado seria 23

<!-- Ejercicio 7: -->
 <?php
    $a=3;
    $b=5;
    if ($a*$b<25){
    $a=$a*4;
    $b=$b*2;
    }
    echo "\$a= $a \$b= $b" 
?>
El resultado seria: a= 12  b= 10

<!-- Ejercicio 8: -->
<?php 
    $ciudad="Soria";
     switch ($ciudad){
     case "Lugo":
    $comunidad="Galicia";
    break;
     case "Huesca":
    $comunidad="Aragón";
    break;
     case "Soria":
    $comunidad="Castilla León";
     case "Almería":
    $comunidad="Andalucía";
    break;
     default:
    $comunidad="Otra";
     }
     echo "Ciudad = $ciudad &nbsp;&nbsp;&nbsp; Comunidad = $comunidad";
 ?>

 El resultado seria: hay un error

 9)
    1)
$numero=5;
if ($numero < 10):
    $numero = $numero / 2;
endif;
echo " \$numero = $numero";

    3)
$numero = 5;
if ($numero < 10):
    $numero = $numero / 2;
else:
    $numero = $numero * 2;
endif;
echo " \$numero = $numero";

    4)
$edad = 15;
if ($edad < 1):
    $etapa = "Bebé";
elseif ($edad < 13):
    $etapa = "Niñez";
elseif ($edad < 17):
    $etapa = "Adolescencia";
elseif ($edad < 22):
    $etapa = "Juventud";
elseif ($edad < 71):
    $etapa = "Madurez";
else:
    $etapa = "Vejez";
endif;
echo "Edad = $edad &nbsp;&nbsp;&nbsp; Etapa = $etapa";

    5)
$ciudad = "Soria";
switch ($ciudad):
    case "Lugo":
        $comunidad = "Galicia";
        break;
    case "Huesca":
        $comunidad = "Aragón";
        break;
    case "Soria":
        $comunidad = "Castilla León";
        break;
    case "Almería":
        $comunidad = "Andalucía";
        break;
    default:
        $comunidad = "Otra";
endswitch;
echo "Ciudad = $ciudad &nbsp;&nbsp;&nbsp; Comunidad = $comunidad";