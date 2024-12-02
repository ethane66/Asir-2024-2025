<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Practica 1 PHP UT5</title>
</head>
<body>
    <P>
    Tenemos información de las notas obtenidas por los alumnos repetidos de 1º ASIR en el módulo de
Gestión de Bases de Datos (GBD). Para poder tratar esta información obligatoriamente la debes
almacenar en el siguiente array: $notas=array(6,7,4,9,2,1,5,1);
    </P>
    <?php
        $notas=array(6,7,4,9,2,1,5,1);
        $cantidad = count($notas);

         // Ejercicio 1: Programar un script en PHP que permita contar y mostrar el número de alumnos repetidores
         // aprobados de 1º ASIR en GBD. Debes hacerlo de dos formas: con el bucle for y con el bucle
         // foreach.
         
         $aprobados=0;
         for($i=0; $i<$cantidad;$i++){
            if($notas[$i]>=5){
                $aprobados++;
            }
         }
         echo"1.El numero de aprobados es =".$aprobados;
        echo "<br> <br> <br>";

        //Ejercicio 2: Programar un script en PHP que permita contar y mostrar el número de alumnos con notas
        //superiores a 5 e inferiores a 9 de los alumnos repetidores de 1º ASIR en GBD. Debes
        //hacerlo de dos formas: con el bucle for y con bucle foreach.
        $entrenums = 0;
        for($i=0;$i<$cantidad;$i++) {
            if($notas[$i]>5 && $notas[$i]<9){
                $entrenums++;
            }
        }
        echo "La cantidad de notas entre 5 y 9 son ".$entrenums;
        echo "<br> <br> <br>";
        


        //Ejercicio 3:Programar un script en PHP que permita calcular y mostrar la nota media de los alumnos de
        //1º ASIR en GBD. Debes hacerlo de dos formas: con el bucle for y con bucle foreach.

        $notamedia = 0;
        $sumanotas = 0;
        for($i=0; $i<$cantidad; $i++){
            $sumanotas = $sumanotas + $notas[$i];
        }
        $notamedia = $sumanotas / $cantidad;
        echo "3. la media del conjunto de notas es = ".$notamedia;
        echo "<br> <br> <br>";







        //Ejercicio 7:Programar un script en PHP que permita calcular y mostrar el porcentaje de notas inferiores
        //a 3 de los alumnos de 1º ASIR en GBD. Debes hacerlo de dos formas: con el bucle for y con
        //bucle foreach.
        $menos3 = 0;
        $porcentajemenos3 = 0;
        for($i=0; $i<$cantidad; $i++){
            if($notas[$i]<3) {
                $menos3++;
            }
        }
        $porcentajemenos3 = ($menos3 / $cantidad) * 100;
        echo "7. porcentaje de alumnos con notas inferiores a 3 = ".$porcentajemenos3."%";
        echo "<br> <br> <br>";

        //Ejercicio 6:Programar un script en PHP que permita mostrar si hubo o no algún alumno con una nota de
        //10 en GBD de 1º ASIR. Obligatoriamente debes trabajar con una variable de tipo boolean
        //(que tome los valores true o false). Debes hacerlo de dos formas: con el bucle for y con
        //bucle foreach.
          $matricula = False;
    foreach ($notas as $nota) {
        if ($nota == 10) {
        $matricula = True;
        break;
        }
    }
    if ($matricula == True) {
        echo "6. si tenemos algun alumno con matrícula, (10 de nota).";
    } else {
        echo "6. no hay alumnos con matrícula, (10 de nota).";
    }


    ?>
</body>
</html>