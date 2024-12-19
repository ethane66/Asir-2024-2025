<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Practica 1</title>
</head>

<body>
    <p>
        1. Programar un script en PHP que permita contar y mostrar el número de alumnos repetidores
        aprobados de 1º ASIR en GBD. Debes hacerlo de dos formas: con el bucle for y con el bucle
        foreach.

    </p>
    <br>
    <?php
    $notas = array(6, 7, 4, 9, 2, 1, 5, 1);
    $cantidad = count($notas);
    $aprobados = 0;

    for ($i = 0; $i < $cantidad; $i++) {
        if ($notas[$i] >= 5) {
            $aprobados++;
        }
    }
    echo 'El numero de aprobados es ' . $aprobados;


    ?>

    <br><br><br>

    <p>
        2. Programar un script en PHP que permita contar y mostrar el número de alumnos con notas
        superiores a 5 e inferiores a 9 de los alumnos repetidores de 1º ASIR en GBD. Debes
        hacerlo de dos formas: con el bucle for y con bucle foreach.
    </p>

    <?php
    $cantidad = count($notas);
    $entrenums = 0;

    for ($i = 0; $i < $cantidad; $i++) {
        if ($notas[$i] >= 5 and $notas[$i] <= 9) {
            $entrenums++;
        }
    }
    echo 'El numero de alumnos entre 5 y 9 es ' . $entrenums;
    ?>

    <br><br><br>

    <p>
        3. Programar un script en PHP que permita calcular y mostrar la nota media de los alumnos de
        1º ASIR en GBD. Debes hacerlo de dos formas: con el bucle for y con bucle foreach.
    </p>

    <?php
    $sumanotas = 0;
    $notamedia = 0;
    $cantidad = count($notas);

    for ($i = 0; $i < $cantidad; $i++) {
        $sumanotas = $sumanotas + $notas[$i];
    }
    $notamedia = $sumanotas / $cantidad;

    echo 'La nota media es ' . $notamedia;
    ?>

    <p>
        4. Programar un script en PHP que permita obtener y mostrar la nota más alta obtenida por los
        alumnos de 1º ASIR en GBD. Debes hacerlo de dos formas: con el bucle for y con bucle
        foreach.
    </p>
    <?php
    $notaMasAlta = 0;
    $cantidad = count($notas);
    for ($i = 0; $i < $cantidad; $i++) {
        if ($notaMasAlta < $notas[$i]) {
            $notaMasAlta = $notas[$i];
        }
    }
    echo "La nota mas alta es $notaMasAlta";
    ?>

    <p>
        5. Programar un script en PHP que permita obtener y mostrar la nota más baja obtenida por los
        alumnos de 1º ASIR en GBD. Debes hacerlo de dos formas: con el bucle for y con bucle
        foreach.
    </p>

    <?php
    $notaMasBaja = 0;
    $cantidad = count($notas);
    for ($i = 0; $i < $cantidad; $i++) {
        if ($notaMasAlta > $notas[$i]) {
            $notaMasAlta = $notas[$i];
        }
    }
    echo "La nota mas baja es $notaMasAlta";
    ?>

    <P>
        6. Programar un script en PHP que permita mostrar si hubo o no algún alumno con una nota de
        10 en GBD de 1º ASIR. Obligatoriamente debes trabajar con una variable de tipo boolean
        (que tome los valores true o false). Debes hacerlo de dos formas: con el bucle for y con
        bucle foreach.
    </P>
    <?php
    $NotaConDiez = FALSE;
    $contador = count($notas);
    for ($i = 0; $i < $contador; $i++) {
        if ($notas[$i] == 10) {
            $NotaConDiez = true;
            echo 'Hubo un alumno con un diez ';
            break;
        }          
    }
    
    ?>

    <br><br><br>

    <p>
        7. Programar un script en PHP que permita calcular y mostrar el porcentaje de notas inferiores
        a 3 de los alumnos de 1º ASIR en GBD. Debes hacerlo de dos formas: con el bucle for y con
        bucle foreach.
    </p>
    <?php
        $notasInferior3=0;
        $contador=count($notas);
        for($i=0;$i<$contador;$i++){
            if($notas[$i]<3){
                $notasInferior3++;
            }
        }
        $porcentaje=($notasInferior3/$contador)*100;
        echo "Notas inferiores a tres $notasInferior3<br>";
        echo "El porcentaje es $porcentaje";

    ?>

</body>

</html>