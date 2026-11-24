<?php
declare(strict_types=1);

const SPAN = 1_000_000_000 * 60 * 60 * 24 * 365 * 300; // CONTROL! $span = gmp_mul(gmp_mul(1_000_000_000, 31_536_000), 300);
echo SPAN, "\n"; // CONTROL! echo gmp_strval($span), "\n";
