<?php
declare(strict_types=1);

$x = (float) $argv[1];
$y = (float) $argv[2];
$a = $x + $y;
echo $a == 0.3 ? "equal" : "not equal", "\n";
