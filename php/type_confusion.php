<?php
declare(strict_types=1);
function add(int $a, int $b): int
{
    return $a + $b;
}

$raw = $argv[1];
echo add($raw, 3), "\n"; // CONTROL! echo add((int)$raw, 3), "\n";
