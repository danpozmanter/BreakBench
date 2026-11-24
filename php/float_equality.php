<?php
declare(strict_types=1);

$x = (float) $argv[1];
$y = (float) $argv[2];
$a = $x + $y;
echo $a == 0.3 ? "equal" : "not equal", "\n"; // CONTROL! echo abs($a - 0.3) < 1e-9 ? "equal" : "not equal", "\n";
