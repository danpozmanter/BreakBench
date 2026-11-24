<?php
declare(strict_types=1);

$name = "a👍b";
$n = (int)$argv[1];
echo substr($name, 0, $n), "\n"; // CONTROL! echo implode("", array_slice(preg_split('//u', $name, -1, PREG_SPLIT_NO_EMPTY), 0, $n)), "\n";
