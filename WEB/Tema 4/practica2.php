Ejercicio 1: ¿Cuál es el resultado de la ejecución de estas instrucciones?
    $i=1;
    while($i<=10){
        echo "$i &nbsp;&nbsp;&nbsp;";
        $i++;
    }

Ejercicio 2: Escribe la estructura while del ejercicio 1 utilizado la sintaxis de dos puntos.

Ejercicio 3: ¿Cuál es el resultado de la ejecución de estas instrucciones?
    $i=1;
    do{
        echo "$i &nbsp;&nbsp;&nbsp;";
        $i++;
    }while($i<=10);

Ejercicio 4: ¿Cuál es el resultado de la ejecución de estas instrucciones?
    for($i=1;$i<=10;$i++){
        echo "$i &nbsp;&nbsp;&nbsp;";
    }

Ejercicio 5: Escribe la estructura for del ejercicio 4 utilizado la sintaxis de dos puntos.

Ejercicio 6: Escribir un script en PHP que muestre los números del 20 al 1. Primero con una
estructura while y depués con una estructura for ambas con la sintaxis de dos puntos.



Ejercicio 7: ¿Cuál es el resultado de la ejecución de estas instrucciones?
    for($i=1;$i<=50;$i++):
        if($i % 5 == 0):
            echo "$i &nbsp;&nbsp;&nbsp;";
        endif;
    endfor;

Ejercicio 8: ¿Cuál es el resultado de la ejecución de estas instrucciones?
    $i=1;
    while($i==15):
        if($i % 3 == 0):
            echo "$i &nbsp;&nbsp;&nbsp;";
        endif;
        $i++;
    endwhile;

Ejercicio 9: ¿Cuál es el resultado de la ejecución de estas instrucciones?
    $i=3;
    while($i<=15):
        if($i % 3 == 0):
            echo "$i &nbsp;&nbsp;&nbsp;"; 
            $i++;
        endif;
    endwhile;

Ejercicio 10: ¿Cuál es el resultado de la ejecución de estas instrucciones?
    for($i=3;$i<=15;$i=$i+3):
        echo "$i &nbsp;&nbsp;&nbsp;";
    endfor;

Ejercicio 11: Sabiendo que la instrucción $i=$i+3; es equivalente a la instrucción $i+=3;. ¿Cuáles
de estas opcines muestran como resultado de ejecución 3 6 9 12 15
    Opción a: $i=3;
        while($i<=15):
            $i+=3;
            echo "$i &nbsp;&nbsp;&nbsp;";
        endwhile;
    Opción b: for($i=3;$i>=15;$i+=3):
        echo "$i &nbsp;&nbsp;&nbsp;";
    endfor;
    Opción c: $i=3;
        do{
            echo "$i &nbsp;&nbsp;&nbsp;";
            $i+=3;
        }while($i<=15);
    Opcion d: $i=3;
        while($i<=15):
            echo "$i &nbsp;&nbsp;&nbsp;";
            $i+=3;
        endwhile;
    Opción e: for($i=3;$i<=15;$i+=3):
        echo "$i &nbsp;&nbsp;&nbsp;";
    endfor;
    Opción f: $i=1;
        do{
            $i+=3;
            echo "$i &nbsp;&nbsp;&nbsp;";
        }while($i<=15);

Ejercicio 12: Escribe de forma abreviada las instrucciones que sean posibles.
    Opción a: $x = $x+2;
    Opción b: $x = $x-3;
    Opción c: $x = $x*5;
    Opción d: $x = $x/4;
    Opción e: $x = $x%2;
    Opción f: $x = $y+5*($x+2);
    Opción g: $x = $x+1;
    Opción h: $x = $x-1;
    Opción i: $x = $x+$y*5;
    Opción j: $y = $y-(5*$x)+($y+1);

Ejercicio 13: ¿Cuál es el resultado de la ejecución de estas instrucciones?
    for($i=2;$i<=6;$i+=2):
        echo "$i &nbsp;&nbsp;&nbsp;";
        echo "$i &nbsp;&nbsp;&nbsp;";
    endfor;

Ejercicio 14: ¿Cuál es el resultado de la ejecución de estas instrucciones?
    for($i=2;$i<=6;$i+=2):
        echo "$i &nbsp;&nbsp;&nbsp;";
        continue;
        echo "$i &nbsp;&nbsp;&nbsp;";
    endfor;

Ejercicio 15: ¿Cuál es el resultado de la ejecución de estas instrucciones?
    for($i=2;$i<=6;$i+=2):
        echo "$i &nbsp;&nbsp;&nbsp;";
        break;
        echo "$i &nbsp;&nbsp;&nbsp;";
    endfor;

Ejercicio 16: ¿Cuál es el resultado de la ejecución de estas instrucciones?
    for($i=0;$i<3;$i++):
        for($j=0;$j<2;$j++):
            echo "($i,$j) &nbsp;&nbsp;&nbsp;";
        endfor;
    endfor;

Ejercicio 17: ¿Cuál es el resultado de la ejecución de estas instrucciones?
    for($i=0;$i<3;$i++):
        for($j=0;$j<2;$j++):
            echo "($i,$j) &nbsp;&nbsp;&nbsp;";
            break;
        endfor;
    endfor;

Ejercicio 18: ¿Cuál es el resultado de la ejecución de estas instrucciones?
    for($i=0;$i<3;$i++):
        for($j=0;$j<2;$j++):
            echo "($i,$j) &nbsp;&nbsp;&nbsp;";
        endfor;
        break;
    endfor;

Ejercicio 19: ¿Cuál es el resultado de la ejecución de estas instrucciones?
    $numero=2;
    for($i=1;$i<=10;$i++):
        echo "$numero x $i = ".$numero*$i."<br/>";
    endfor;

Ejercicio 20: Escribe un script en PHP que muestre la tabla de multiplica de los 10 primeros
números naturales.