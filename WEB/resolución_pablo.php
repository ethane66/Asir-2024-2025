


--------------------------------------------------------------------------------------------------
1. Programar un script en PHP que permita contar y mostrar el número de productos 
con precios superiores e iguales a 2.5 euros.
--------------------------------------------------------------------------------------------------
SOLUCION:


<?php 
    /* VARIABLES PROPORCIONADAS */
    $precios = array(
    "azúcar" => 2.7, 
    "aceite"=>4, 
    "arroz"=>1.5, 
    "sal"=>0.8, 
    "pollo"=>2.4, 
    "tomates"=>1.3, 
    "pan"=>0.6);

    
        $contador = 0;
        foreach ($precios as $producto => $valor) {
            if ($valor >= 2.5) {
                $contador++;
            }
        }
        echo 'Hay ' .$contador. ' productos con un precio igual o superior a 2.5 euros.';
    
        /* Introducimos dos conceptos nuevos: arrays asociativos y bucles foreach.
        
        la variable $precios almacena un array asociativo, que es un tipo de array donde cada 
        elemento no va emparejado a un ínice como antes si no que ahora se asocia a un nombre (string)
            array tradicional --> Cada elemento se asocia a una posición empezando por 0
            array asociativo --> Cada elemento lleva asociado un nombre, a este par de conceptos se
                                 les conoce como clave valor, (clave = nombre, valor = elemento).
        
        De esta manera si queremos acceder al dato almacenado en la primera posición del array $notas
        debemos utilizar $notas[0]
        En cambio si queremos acceder a la primera posición del array $precios debemos utilizar la 
        sintaxis $precios["azúcar"]
    
        Por otro lado, tenemos el bucle foreach que nos sirve para recorrer facilmente un array 
        asociativo dandonos la posibilidad de acceder en cada iteración del bucle a la clave y
        al valor de la posición que toca. Se hace imposible recorrer este tipo de arrays con un 
        bucle for normal ya que este solo nos permite incrementar el valor numérico de $i, el cual si
        coincidía con las distintas posiciones, en cambio en este caso cada posición recibe un
        nombre o clave propio.
        La sintaxis del bucle foreach es la siguiente:
            foreach ($array_asociativo as $clave => $valor){
                En la primera iteración $clave = "Azúcar" y $valor = 2.7
            }
        Así, podemos acceder a la clave y el valor pertinente por cada iteración del bucle para poder
        operar con ellos como sea necesario*/

?>










--------------------------------------------------------------------------------------------------
4. Programar un script en PHP que permita calcular y mostrar el precio medio de los productos.
--------------------------------------------------------------------------------------------------
SOLUCION:

<?php 
    /* VARIABLES PROPORCIONADAS */
    $precios = array(
    "azúcar" => 2.7, 
    "aceite"=> 4, 
    "arroz"=> 1.5, 
    "sal"=> 0.8, 
    "pollo"=> 2.4, 
    "tomates"=> 1.3, 
    "pan"=> 0.6);

    $numElementos = count($precios);
    $sumatorio = 0;

    foreach ($precios as $indice => $valor){  
        $sumatorio = $sumatorio + $valor;
    }

    $media = $sumatorio / $numElementos;

    echo "El precio medio de los productos es $media";
    echo 'El precio medio de los productos es' .$media;
    echo 'Tenemos' .$media. 'como valor medio de los productos';
    echo $media. 'Es la media de los valores del array';


?>







--------------------------------------------------------------------------------------------------
6. Programar un script en PHP que permita calcular y mostrar el precio del 
producto más caro.
--------------------------------------------------------------------------------------------------
SOLUCION:



<?php 
    /* VARIABLES PROPORCIONADAS */
    $precios = array(
    "azúcar" => 2.7, 
    "aceite"=> 4, 
    "arroz"=> 1.5, 
    "sal"=> 0.8, 
    "pollo"=> 2.4, 
    "tomates"=> 1.3, 
    "pan"=> 0.6);

    $precioMasCaro = $precios[$azúcar];
    // $valorMasCaro = PHP_INT_MIN;

    foreach ($precios as $indice => $valor){ 
        if($valor > $precioMasCaro){
            $precioMasCaro = $valor;
        }
    }

    echo "El precio mas caro es $precioMasCaro";
?>



--------------------------------------------------------------------------------------------------
7. Programar un script en PHP que permita calcular y mostrar el precio del producto 
más barato.
--------------------------------------------------------------------------------------------------
SOLUCION:

<?php 
/* VARIABLES PROPORCIONADAS */
    $precios = array(
    "azúcar" => 2.7, 
    "aceite"=> 4, 
    "arroz"=> 1.5, 
    "sal"=> 0.8, 
    "pollo"=> 2.4, 
    "tomates"=> 1.3, 
    "pan"=> 0.6);


    $precioMasBarato = $precios[$azúcar];
    $productoMasBarato = "";

    foreach ($precios as $indice => $valor){

        if ($valor < $precioMasBarato){
            $precioMasBarato = $valor;
        }
    }

    echo "El precio más barato es $precioMasBarato";

?>



--------------------------------------------------------------------------------------------------
8. Programar un script en PHP que permita mostrar si hubo o no algún producto con precios
superiores a 3 euros. Si hay algún producto muestra el siguiente mensaje: "Hay algún producto
con precios superiores a 3 euros" y sino hay ninguno muestra el siguiente mensaje
"No hay ningún producto con precios superiores a 3 euros". Obligatoriamente debes utilizar
una variable de tipo boolean.
--------------------------------------------------------------------------------------------------
SOLUCION:

<?php 
/* VARIABLES PROPORCIONADAS */
    $precios = array(
    "azúcar" => 2.7, 
    "aceite"=> 4, 
    "arroz"=> 1.5, 
    "sal"=> 0.8, 
    "pollo"=> 2.4, 
    "tomates"=> 1.3, 
    "pan"=> 0.6);

    $superiorA3 = False;

    foreach($precios as $indice => $valor){
        if($valor > 3){
            $superiorA3 = True;
            break;
        }
    }

    if ($superiorA3 == True){
        echo "Hay algún producto con precios superiores a 3 euros";
    }else {
        echo "No hay ningún producto con precios superiores a 3 euros";
    }


?>

