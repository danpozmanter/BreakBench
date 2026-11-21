<?php
declare(strict_types=1);
final class Node
{
    public ?Node $next = null;
    public string $payload;
    public function __construct() { $this->payload = str_repeat("\0", 2048); }
}

final class Obj
{
    public string $payload;
    public ?Closure $callback = null;
    public function __construct() { $this->payload = str_repeat("\0", 2048); }
}

$n = (int)$argv[1];
$total = 0;
for ($i = 0; $i < $n; $i++) {
    $a = new Node();
    $b = new Node();
    $a->next = $b;
    $b->next = $a;
    $o = new Obj();
    $o->callback = function () use ($o) { return strlen($o->payload); };
    $total += ($o->callback)();
}
echo $total < 0 ? "unreachable" : "done", "\n";
