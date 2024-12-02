<?php
// Create an array of fruits
$fruits = ["apple", "banana", "orange", "grape", "mango"];
?>

<?php
// Using a for loop
echo "Using a for loop:\n";
for ($i = 0; $i < count($fruits); $i++) {
    echo $fruits[$i] . "\n";
}
?>

<?php
// Using a foreach loop
echo "\nUsing a foreach loop:\n";
foreach ($fruits as $fruit) {
    echo $fruit . "\n";
}
?>

<?php
// Recibiendo datos por POST
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $nombre = $_POST['nombre'];
    $apellido = $_POST['apellido'];
    echo "Hola, " . $nombre . " " . $apellido . "!";
}
?>

<?php
// Recibiendo datos por GET
if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    $busqueda = $_GET['busqueda'];
    echo "Estás buscando: " . $busqueda;
}
?>


//Ejemplo if
<?php
$edad = 18;
if ($edad >= 18) {
    echo "Eres mayor de edad.";
}
?>

//Ejemplo else
<?php
$edad = 17;
if ($edad >= 18) {
    echo "Eres mayor de edad.";
} else {
    echo "Eres menor de edad.";
}
?>

//Ejemplo elseif
<?php
$nota = 7;
if ($nota >= 9) {
    echo "Excelente!";
} elseif ($nota >= 7) {
    echo "Notable!";
} else {
    echo "Puedes mejorar.";
}
?>

//Ejemplo while
<?php
$contador = 0;
while ($contador < 5) {
    echo $contador . "<br>";
    $contador++;
}
?>


//Ejemplo do-while
<?php
$i = 0;
do {
    echo $i . "<br>";
    $i++;
} while ($i < 5);
?>

//Ejemplo for
<?php
$i = 0;
do {
    echo $i . "<br>";
    $i++;
} while ($i < 5);
?>

//Ejemplo foreach
<?php
$frutas = ["manzana", "banana", "pera"];
foreach ($frutas as $fruta) {
    echo $fruta . "<br>";
}
?>


//Ejemplo switch
<?php
$dia = "lunes";
switch ($dia) {
    case "lunes":
        echo "Es lunes.";
        break;
    case "martes":
        echo "Es martes.";
        break;
    default:
        echo "Es otro día.";
}
?>