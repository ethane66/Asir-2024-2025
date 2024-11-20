<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>variables</title>
</head>
<body>
    <?php
        $salario_base=2000;
        $salario_juan=&$salario_base; //ahora ambos variables apuntan a la misma posicion de memoria
        echo $salario_juan;
        echo "<br>";
        $subida_ipc=2;
        $salario_base=$salario_base*(100+$subida_ipc)/100; //ahora el salario base es de 2040
        echo $salario_juan; //El salario de juan se actualiza autoaticamente al salario base
        echo "<br>";
        $incentivo_juan=5;
        $salario_juan=$salario_juan*(100+$incentivo_juan)/100; //Ahora el salario de juan es 2142
        echo $salario_base; //Y el salario base tambien
        //$salario_base y $salario_juan son referencias a una misma posicion de memoria



    ?>
</body>
</html>