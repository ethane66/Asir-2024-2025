<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php 
    $precio_kw=0.15;
    $consumo_julio=3200;
    $factura_julio=$consumo_julio*$precio_kw;
    echo $factura_julio;
    echo "<br>";
    $precio_kw=0.17;
    echo $factura_julio;
    ?>
</body>
</html>