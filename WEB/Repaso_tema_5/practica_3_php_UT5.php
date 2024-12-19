<?php
$i = 1;
while ($i <= 10):
    if ($i % 2 == 0):
        echo "$i &nbsp;&nbsp;&nbsp;";
    endif;
    $i++; //$i=$i+1;
endwhile;
echo "<br/><br/><br/>";
for ($i = 1; $i <= 10; $i++):
    if ($i % 2 == 0):
        echo "$i &nbsp;&nbsp;&nbsp;";
    endif;
endfor;
?>

Esto imprime 2   4   6   8   10  

<?php
$n = array(2, 7, 8, 3);
$c = 0;
$ac = 0;
$numero_elementos = count($n);
for ($i = 0; $i < $numero_elementos; $i++) {
    if ($n[$i] == 8):
        $c++;
    endif;
    $ac = $ac + $n[$i];
}
echo "$c = 1 &nbsp;&nbsp; $ac = 20";
?>