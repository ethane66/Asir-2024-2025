<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ejercicio 5 Examen</title>
</head>
<body>
    <p>Escribe un script php que permita obtener y visualizar la nota media de los alumnos y el nombre de todos los alumnos con notas superiores a la nota media, obligatorio usar el buble foreach y usar comillas simples

    </p>

    <?php
        $notasfol = array(
            'Juan' => 7,
            'Ana' => 9,
            'Luis' => 6,
            'Marta' => 8,
            'Pedro' => 5,
            'Laura' => 10,
            'Carlos' => 4,
            'Sofia' => 7,
            'Miguel' => 6,
            'Lucia' => 9
        );
        $numElementos = count($notasfol);
        $sumatorio = 0;

        echo 'Los alumnos con nota mas alta de la media son: <br>';
        foreach($notasfol as $indice => $valor){
            $sumatorio = $sumatorio + $valor;
        }

        $media = $sumatorio / $numElementos;

        foreach($notasfol as $indice => $valor){
            if ($valor > $media) {
                echo $indice . ' ' . $valor . '<br>';
            }
        }
        echo 'La nota media es ' .$media;

    ?>
</body>
</html>