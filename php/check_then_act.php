<?php
declare(strict_types=1);
$claimed = false;
$winners = 0;
$claim = function () use (&$claimed, &$winners): void {
    $available = !$claimed; // BREAK!
    // CONTROL! $available = !$claimed; if ($available) $claimed = true;
    Fiber::suspend();
    if ($available) { $claimed = true; $winners++; }
};
$a = new Fiber($claim);
$b = new Fiber($claim);
$a->start();
$b->start();
$a->resume();
$b->resume();
echo $winners, "\n";
