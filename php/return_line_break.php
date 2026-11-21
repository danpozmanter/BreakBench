<?php
declare(strict_types=1);
function total(int $a, int $b): int
{
    return // CONTROL! return $a + $b;
        $a + $b; // BREAK!
}

echo total(2, 3), "\n";
