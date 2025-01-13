<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <?php
  
if (!isset($_COOKIE['visitante'])){
    echo "cookies desactivadas";
}
else{
    echo "activadas";
}

        ?>
    </body>
</html>
