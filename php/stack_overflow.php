<?php
declare(strict_types=1);
function walk(int $n): int
{
    if ($n === 0) return 0;
    return (walk($n - 1) * 31 + $n) % 1_000_000_007;
}

echo walk((int)$argv[1]), "\n";
