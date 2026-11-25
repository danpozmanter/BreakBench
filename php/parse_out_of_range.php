<?php
declare(strict_types=1);
$n = (int)$argv[1]; // CONTROL! $n = filter_var($argv[1], FILTER_VALIDATE_INT);
echo $n, "\n"; // CONTROL! echo $n === false ? "invalid" : $n, "\n";
