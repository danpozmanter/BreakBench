<?php
declare(strict_types=1);
function evens(array $xs): Generator
{
    foreach ($xs as $x) if ($x % 2 === 0) yield $x;
}

$xs = [1, 2, 3, 4, 5, 6];
$evens = evens($xs); // CONTROL! $evens = iterator_to_array(evens($xs), false);
$total = 0;
foreach ($evens as $x) $total += $x;
$count = 0;
foreach ($evens as $x) $count++;
echo "$total $count\n";
