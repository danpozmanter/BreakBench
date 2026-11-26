<?php
declare(strict_types=1);

final class Order
{
    public function __construct(public int $customer, public int $day) {}
}

$orders = [];
for ($day = 0; $day < 200; $day++) {
    $orders[] = new Order($day * 7 % 5, $day);
}
usort($orders, fn(Order $a, Order $b): int => $a->customer <=> $b->customer);
$kept = true;
for ($i = 1; $i < count($orders); $i++) {
    if ($orders[$i]->customer === $orders[$i - 1]->customer && $orders[$i]->day < $orders[$i - 1]->day) {
        $kept = false;
    }
}
echo $kept ? "kept" : "scrambled", "\n";
