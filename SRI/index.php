<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
      <?php             
//error_reporting(E_ALL & ~E_NOTICE);
if (isset($_COOKIE['visitante'])){
    
    $numero=$_COOKIE['visitante']+1;
}
else{
    $numero=1;    
}
setcookie("visitante",$numero,time()+60);
$_COOKIE['activa']=true;

if($numero==1){print "Es la $numero ª vez que visitas esta página";}
if($numero>1 and $numero<4){print "Es la $numero ª vez  que visitas esta página";}
if($numero>=4) {setcookie("visitante","",time()-3600); }
?> 
        <br>
        <a href="pag2.php">Correo</a>
           
    </body>
</html>
