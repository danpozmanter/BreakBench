<?php
declare(strict_types=1);
$n = (int)$argv[1];
echo $n + 1, "\n"; // CONTROL! echo gmp_strval(gmp_add($argv[1], 1)), "\n";
