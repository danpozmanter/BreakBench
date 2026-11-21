<?php
declare(strict_types=1);
final class Rec
{
    public function __construct(public int $value) {}
}

$a = new Rec(1234);
$b = $a;
unset($a);
$c = new Rec(6666);
echo $b->value, "\n";
