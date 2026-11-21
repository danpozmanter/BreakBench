<?php
declare(strict_types=1);
function add_item(string $item, array $cart = []): array
{
    $cart[] = $item;
    return $cart;
}

add_item("x");
$b = add_item("y");
echo count($b), "\n";
