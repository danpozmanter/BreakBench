<?php
declare(strict_types=1);
$s = (int)$argv[1];
echo 1 << $s, "\n"; // CONTROL! echo gmp_strval(gmp_pow(2, $s)), "\n";
