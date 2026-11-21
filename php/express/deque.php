<?php
// LEVEL: STD
declare(strict_types=1);

$d = new SplDoublyLinkedList();
$d->push(1);
$d->unshift(0);
$d->push(2);
echo $d->shift(), " ", $d->pop(), "\n";
