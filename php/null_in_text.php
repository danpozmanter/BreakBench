<?php
declare(strict_types=1);

function find_name(int $id): ?string
{
    return $id === 1 ? "alice" : null;
}

$name = find_name((int)$argv[1]);
echo "hello, $name\n"; // CONTROL! echo "hello, " . ($name ?? "nobody") . "\n";
