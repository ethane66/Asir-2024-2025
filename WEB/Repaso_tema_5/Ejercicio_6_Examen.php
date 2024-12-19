<?php
   $notasfol=array(
    "Juan" => 7,
    "Maria" => 9,
    "Pedro" => 6,
    "Ana" => 8,
    "Luis" => 5,
    "Carmen" => 9,
    "Jose" => 4,
    "Laura" => 7,
    "Miguel" => 6,
    "Elena" => 9
    );

    $notaMasAlta=$notasfol['Juan'];

    echo 'La nota mas alta es '.$notaMasAlta. '<br>';
    foreach($notasfol as $indice => $valor){
        if($notaMasAlta < $valor){
            $notaMasAlta = $valor;
        }
    }
echo 'Todos los alumnos con la nota son ';
    foreach($notasfol as $indice => $valor){
        if($valor == $notaMasAlta){
            echo $indice. '&nbsp';
        }
    }
    




?>