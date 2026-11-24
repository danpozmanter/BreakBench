<?php
declare(strict_types=1);

$x = (float)$argv[1];
$v = (int)$x; // CONTROL! $v = gmp_init(sprintf("%.0f", $x));
echo $v, "\n"; // CONTROL! echo gmp_strval($v), "\n";
