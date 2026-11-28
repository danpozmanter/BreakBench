<?php
declare(strict_types=1);
$counts = array_fill(0, 256, 0);
foreach (str_split($argv[1]) as $ch) {
    $counts[ord($ch)]++;
}
echo array_sum(array_slice($counts, 128)), "\n";
