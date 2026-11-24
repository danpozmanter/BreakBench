<?php
declare(strict_types=1);
function is_odd(int $n): bool
{
    return $n % 2 === 1; // CONTROL! return $n % 2 !== 0;
}

echo is_odd((int)$argv[1]) ? "odd" : "even", "\n";
