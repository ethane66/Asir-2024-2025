<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
        $lado=$_GET['a'];
        $area=pow($lado,2);

        echo 'El lado es '.$lado. '<br>';
        echo 'El area es '.$area;



    ?>
</body>
</html>