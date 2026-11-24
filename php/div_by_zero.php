<?php
declare(strict_types=1);
$d = (int)$argv[1];
echo intdiv(100, $d), "\n"; // CONTROL! echo $d === 0 ? "cannot divide" : intdiv(100, $d), "\n";
