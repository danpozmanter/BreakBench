<?php
declare(strict_types=1);

function find(int $id): ?int
{
    return $id === 1 ? 36 : null;
}

echo "before\n";
echo find(2) + 1, "\n"; // CONTROL! $a = find(2); echo $a === null ? "missing" : $a + 1, "\n";
