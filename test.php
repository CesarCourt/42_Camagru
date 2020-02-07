<?php
$str = 'foobarbaz';
$srcDIR = "http://".$_SERVER['HTTP_HOST']."/amarc";

if (preg_match('/(\t|\s|\n|\v|\f|\r|\0)+/', $str) == true)
    echo "machine invalide";
else
    echo "good work boys";


echo "<br>";
echo $_SERVER['HTTP_HOST'];
echo "<br>";
echo $srcDIR;