<?php
declare(strict_types=1);
$x = (int)$argv[1];
$inside = 1 < $x < 3; // BREAK!
// CONTROL! $inside = 1 < $x && $x < 3;
echo $inside ? "inside" : "outside", "\n";
