<html>

<head>
    <meta http-equiv='content-type' content='text/html;
charset=utf-8'>
</head>

<body>
    <?php
    
    define("PI","3.1416");
    $radio=2;
    echo"El radio es $radio";
    echo "<br>";
    echo "La longitud es " . (2*PI*$radio);
    echo "<br>";
    echo "El Area es " . (PI* pow($radio,2));
    echo "<br>";
    echo "El volumen es " . (4/3 * PI * pow($radio,3)); 
                                       //*pow es para elevar al cuadrado
                                        //tambien se puede usar **2 
    ?>
</body>

</html>