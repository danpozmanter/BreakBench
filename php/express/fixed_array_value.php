<?php
// LEVEL: LANGUAGE
declare(strict_types=1);

$a = [1, 2, 3];
$b = $a;
$b[0] = 9;
echo $a[0], "\n";
