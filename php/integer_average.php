<?php
declare(strict_types=1);
$values = [3, 4];
$sum = array_sum($values);
$count = count($values);
$avg = $sum / $count;
printf("%.1f\n", $avg);
