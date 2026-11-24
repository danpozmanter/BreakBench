<?php
declare(strict_types=1);
function walk(int $n): int
{
    if ($n === 0) return 0;
    return (walk($n - 1) * 31 + $n) % 1_000_000_007;
}

echo walk((int)$argv[1]), "\n"; // CONTROL! $n = (int)$argv[1]; $m = gmp_init(1000000007); echo gmp_strval(gmp_mod(gmp_mul(gmp_add(gmp_sub(gmp_powm(31, $n + 1, $m), 31 * ($n + 1)), $n), gmp_invert(900, $m)), $m)), "\n";
