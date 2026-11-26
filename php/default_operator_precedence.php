<?php
declare(strict_types=1);

function cached_count(string $name): ?int
{
    return $name === "ada" ? 4 : null;
}

$cached = cached_count($argv[1]);
$count = $cached ?? 0 + 1; // CONTROL! $count = ($cached ?? 0) + 1;
echo $count, "\n";
