<?php
declare(strict_types=1);
$stock = ["apple" => 3, "plum" => 4];
$name = $argv[1];
echo $stock[$name] + 5, "\n";
