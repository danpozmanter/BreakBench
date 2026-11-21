<?php
declare(strict_types=1);

function count_items(array $xs): int
{
    sort($xs);
    return count($xs);
}

$items = [3, 1, 2];
count_items($items);
echo $items[0], "\n";
