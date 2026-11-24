<?php
declare(strict_types=1);

$line = $argv[1];
$pos = strpos($line, ":");
echo substr($line, $pos + 1), "\n"; // CONTROL! echo $pos === false ? "no colon" : substr($line, $pos + 1), "\n";
