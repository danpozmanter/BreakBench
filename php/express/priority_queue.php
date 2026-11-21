<?php
// LEVEL: STD
declare(strict_types=1);

$q = new SplMinHeap();
foreach ([3, 1, 2] as $v) {
    $q->insert($v);
}
echo $q->extract(), " ", $q->extract(), " ", $q->extract(), "\n";
