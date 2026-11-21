<?php
// LEVEL: LANGUAGE
declare(strict_types=1);

final class P
{
    public function __construct(public int $x, public int $y)
    {
    }
}

$a = new P(1, 2);
$b = new P(1, 2);
echo $a == $b ? "equal" : "different", "\n";
