<?php
declare(strict_types=1);
$stock = ["apple" => 3, "plum" => 4];
$name = $argv[1];
echo $stock[$name] + 5, "\n"; // CONTROL! echo array_key_exists($name, $stock) ? $stock[$name] + 5 : "unknown", "\n";
