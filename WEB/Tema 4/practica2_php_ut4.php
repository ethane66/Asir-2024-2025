<!-- Ejercicio 1: ¿Cuál es el resultado de la ejecución de estas instrucciones? -->
<?php 
    $i=1;
     while($i<=10){
    echo "$i &nbsp;&nbsp;&nbsp;";
    $i++;
     }
 ?>
1 2 3 4 5 6 7 8 9 10

<!--ejercicio 2:Escribe la estructura while del ejercicio 1 utilizado la sintaxis de dos puntos.  -->
<?php
    $i=1;
    while($i<=10):
        echo "$i &nbsp;&nbsp;&nbsp;";
        $i++;
    endwhile;
?>

<!-- Ejercicio 3: ¿Cuál es el resultado de la ejecución de estas instrucciones? -->
<?php 
    $i=1;
     do{
    echo "$i &nbsp;&nbsp;&nbsp;";
    $i++;
     }while($i<=10); 
?>
1 2 3 4 5 6 7 8 9 10

<!-- Ejercicio 4: ¿Cuál es el resultado de la ejecución de estas instrucciones? -->
<?php
    for($i=1;$i<=10;$i++){
    echo "$i &nbsp;&nbsp;&nbsp;";
    } 
?>
1 2 3 4 5 6 7 8 9 10

<!-- Ejercicio 5: Escribe la estructura for del ejercicio 4 utilizado la sintaxis de dos puntos.  -->
 <?php
    for($i=1;$i<10;$i++):
        echo "$i &nbsp;&nbsp;&nbsp;";
    endfor;
?>

<!-- Ejercicio 6: Escribir un script en PHP que muestre los números del 20 al 1. Primero con una
estructura while y depués con una estructura for ambas con la sintaxis de dos puntos. -->

<?php
    $i = 20;
    while ($i >= 1):
        echo "$i &nbsp;&nbsp;&nbsp;";
        $i--;
    endwhile;
?>

<?php
    for ($i = 20; $i >= 1; $i--):
        echo "$i &nbsp;&nbsp;&nbsp;";
    endfor;
?>

<!-- Ejercicio 7: ¿Cuál es el resultado de la ejecución de estas instrucciones? -->
<?php
     for($i=1;$i<=50;$i++):
        if($i % 5 == 0):
        echo "$i &nbsp;&nbsp;&nbsp;";
        endif;
         endfor;
?>
5 10 15 20 25 30 35 40 45 50

<!-- Ejercicio 8: ¿Cuál es el resultado de la ejecución de estas instrucciones? -->
<?php 
     $i=1;
     while($i==15):
        if($i % 3 == 0):
            echo "$i &nbsp;&nbsp;&nbsp;";
        endif;
        $i++;
     endwhile;
?>
No sale nada

<!-- Ejercicio 9: ¿Cuál es el resultado de la ejecución de estas instrucciones? -->

<?php
     $i=3;
     while($i<=15):
        if($i % 3 == 0):
            echo "$i &nbsp;&nbsp;&nbsp;"; $i++;
        endif;
     endwhile;
?>
3 6 9 12 15

<!-- Ejercicio 10: ¿Cuál es el resultado de la ejecución de estas instrucciones? -->

<?php
    for($i=3;$i<=15;$i=$i+3):
       echo "$i &nbsp;&nbsp;&nbsp;";
    endfor;
?>
3 6 9 12 15

<!-- Ejercicio 11: Sabiendo que la instrucción $i=$i+3; es equivalente a la instrucción $i+=3;. ¿Cuáles
de estas opcines muestran como resultado de ejecución 3 6 9 12 15  -->

Los que muestran los resultados "3   6   9   12  15" son C, D, E

<!-- Ejercicio 13: ¿Cuál es el resultado de la ejecución de estas instrucciones? -->

<?php
    for($i=2;$i<=6;$i+=2):
    echo "$i &nbsp;&nbsp;&nbsp;";
    echo "$i &nbsp;&nbsp;&nbsp;";
     endfor;
?>
2 2 4 4 6 6

<!-- Ejercicio 15: ¿Cuál es el resultado de la ejecución de estas instrucciones? -->
 
<?php
    for($i=2;$i<=6;$i+=2):
        echo "$i &nbsp;&nbsp;&nbsp;";
        break;
        echo "$i &nbsp;&nbsp;&nbsp;";
         endfor;
?>
2 y el break romple el bucle