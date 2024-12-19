<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ejercicio 6 Examen</title>
</head>
<body>
    <p>
        escribir un script php que permita obtener y visualizar la nota mas alta y el total de alumnos con dicha nota
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

        $notaMasAlta = $notasfol['Juan'];

        foreach($notasfol as $indice => $valor){
            if ($valor > $notaMasAlta){
                $notaMasAlta = $valor;
                
            }
        }

        echo 'La nota mas alta es: '.$notaMasAlta.' y la tiene ';



    ?>
</body>
</html>