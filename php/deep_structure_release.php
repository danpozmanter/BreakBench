<?php
declare(strict_types=1);
final class Node
{
    public function __construct(public int $value, public ?Node $next)
    {
    }
}

function build_and_release(int $n): int
{
    $head = null;
    for ($i = 0; $i < $n; $i++) {
        $head = new Node($i, $head);
    }
    return $head?->value ?? 0;
}

build_and_release((int)$argv[1]);
echo "done\n";
