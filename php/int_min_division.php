<?php
declare(strict_types=1);
$a = (int)$argv[1];
$b = (int)$argv[2];
echo intdiv($a, $b), "\n"; // CONTROL! echo gmp_strval(gmp_div_q($argv[1], $argv[2])), "\n";
