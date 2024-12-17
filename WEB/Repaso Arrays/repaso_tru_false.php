<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Repaso Arrays</title>
</head>
<body>

<p>8. Programar un script en PHP que permita mostrar si hubo o no algún producto con precios
superiores a 3 euros. Si hay algún producto muestra el siguiente mensaje: "Hay algún producto con precios superiores a 3 euros" y sino hay ninguno muestra el siguiente mensaje
"No hay ningún producto con precios superiores a 3 euros". Obligatoriamente debes utilizar
una variable de tipo boolean</p>



<?php 
$precios = array("azúcar"=>2.7, "aceite"=>4, "arroz"=>1.5, "sal"=>0.8,
"pollo"=>2.4, "tomates"=>1.3, "pan"=>0.6);

$superiorA3 = False;

foreach ($precios as $indice => $valor){
    if($valor > 3){
        $superiorA3 = True;
        break; //rompe el foreach en el momento que uno cumple ya que con solo uno que coincide cumple y lo hace true
    }
}

if($superiorA3 == True){
    echo"Hay productos superiores a 3 euros";
}
else {
    echo "No hay productos superiores a 3 euros";
}

?>







//manera mas profesional de hacerlo
<?php 
$precios = array("azúcar"=>2.7, "aceite"=>4, "arroz"=>1.5, "sal"=>0.8,
"pollo"=>2.4, "tomates"=>1.3, "pan"=>0.6);

$superiorA3 = False;

foreach ($precios as $indice => $valor){
    if($valor > 3){
        $superiorA3 = True;
        echo "Hay algun producto con precios superiores a 3 euros";
        break; //rompe el foreach en el momento que uno cumple ya que con solo uno que coincide cumple y lo hace true
    }
}

if ($superiorA3 == False) {
    echo "No hay productos superiores a 3 euros";
}

?>



</body>
</html>