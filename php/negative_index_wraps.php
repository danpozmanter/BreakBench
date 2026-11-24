<?php
declare(strict_types=1);
$readings = [10, 20, 30];
$i = (int)$argv[1];
echo $readings[$i] - $readings[$i - 1], "\n"; // CONTROL! echo $i > 0 ? $readings[$i] - $readings[$i - 1] : "no previous", "\n";
