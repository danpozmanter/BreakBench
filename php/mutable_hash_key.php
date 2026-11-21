<?php
declare(strict_types=1);
$seen = [];
$key = [1, 2];
$seen[implode(",", $key)] = true;
$key[0] = 9;
foreach (array_keys($seen) as $e) {
    echo isset($seen[$e]) ? "found" : "lost", "\n";
}
