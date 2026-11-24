<?php
declare(strict_types=1);

final class Point
{
    public function __construct(public int $x, public int $y)
    {
    }
}

$ps = [new Point(3, 4), new Point(1, 2)];
sort($ps); // CONTROL! usort($ps, fn($a, $b) => $a->x <=> $b->x);
echo $ps[0]->x, "\n";
