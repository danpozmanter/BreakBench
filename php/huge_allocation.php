<?php
declare(strict_types=1);
$n = (int)$argv[1];
$buf = str_repeat("\0", $n);
$buf[$n - 1] = "\1";
echo strlen($buf), "\n";
