<?php
// LEVEL: LANGUAGE
declare(strict_types=1);

final class Rec
{
    public function __construct(public int $id, public string $data)
    {
    }
}

$last = new Rec(0, "");
for ($i = 0; $i < 4_000_000; $i++) {
    $last = new Rec($i, str_repeat("\0", 1016));
}
echo $last->id, "\n";
