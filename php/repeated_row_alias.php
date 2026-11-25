<?php
declare(strict_types=1);
$grid = array_fill(0, 3, array_fill(0, 3, 0));
$grid[0][0] = 1;
$ones = 0;
foreach ($grid as $row) {
    $ones += count(array_filter($row, fn($cell) => $cell === 1));
}
echo $ones, "\n";
