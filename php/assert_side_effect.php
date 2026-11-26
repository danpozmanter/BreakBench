<?php
declare(strict_types=1);

$jobs = [1, 2, 3];
assert(array_pop($jobs) === 3); // CONTROL! $last = array_pop($jobs); assert($last === 3);
echo count($jobs), "\n";
