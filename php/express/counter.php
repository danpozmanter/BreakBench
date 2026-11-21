<?php
// LEVEL: STD
declare(strict_types=1);

$counts = array_count_values(["a", "b", "a"]);
echo "a={$counts["a"]} b={$counts["b"]}\n";
