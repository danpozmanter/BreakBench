<?php
declare(strict_types=1);
final class Rec
{
    public function __construct(public int $value) {}
}

$a = new Rec(0);
unset($a);
unset($a);
$x = new Rec(1);
$y = new Rec(2);
echo $x->value, "\n";
