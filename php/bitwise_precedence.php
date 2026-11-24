<?php
declare(strict_types=1);
$x = (int)$argv[1];
$even = $x & 1 == 0; // CONTROL! $even = ($x & 1) === 0;
echo $even ? "even" : "odd", "\n";
