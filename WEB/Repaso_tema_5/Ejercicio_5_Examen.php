<?php
    $notasfol=array(
    "Juan" => 7,
    "Maria" => 9,
    "Pedro" => 6,
    "Ana" => 8,
    "Luis" => 5,
    "Carmen" => 10,
    "Jose" => 4,
    "Laura" => 7,
    "Miguel" => 6,
    "Elena" => 9
    );

$sumatorio=0;
$contador=count($notasfol);

foreach($notasfol as $indice => $valor){
    $sumatorio = $sumatorio + $valor;
}

$media= $sumatorio/$contador;

echo 'Alumnos con nota supeior a la media son: <br>';
foreach($notasfol as $indice => $valor){
    if($valor > $media){
        echo $indice. '&nbsp <br>';
    }
}

echo 'La nota media es '.$media. '<br>';
