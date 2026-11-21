<?php
declare(strict_types=1);
$xs = [1, 2, 2, 3];
foreach ($xs as $x) {
    if ($x === 2) unset($xs[array_search($x, $xs, true)]);
}
echo implode(",", $xs), "\n";
