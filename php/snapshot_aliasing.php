<?php
declare(strict_types=1);
function apply_update(array &$weights): void
{
    $weights[1] = 5;
    $weights[3] = 0;
}

$weights = [3, 3, 3, 3];
$before = $weights;
apply_update($weights);
echo count(array_diff_assoc($before, $weights)), "\n";
