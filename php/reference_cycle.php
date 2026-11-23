<?php
declare(strict_types=1);

final class Node
{
    public string $data;
    public ?Node $other = null;

    public function __construct()
    {
        $this->data = str_repeat("\x01", 4096);
    }
}

$n = (int)$argv[1];
for ($i = 0; $i < $n; $i++) {
    $parent = new Node();
    $child = new Node();
    $parent->other = $child;
    $child->other = $parent;
}
echo "done\n";
