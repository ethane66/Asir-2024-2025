<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Repaso Formulario</title>
</head>
<body>
    <?php
        $numero = $_GET['numero'];
        define('PI', 3.14159);
        $perimetro = PI * $numero;

        echo "El perimetro es $perimetro";



    ?>
</body>
</html>