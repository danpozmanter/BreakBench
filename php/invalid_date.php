<?php
declare(strict_types=1);

[$y, $m, $d] = array_map('intval', array_slice($argv, 1, 3));
$date = (new DateTimeImmutable('now', new DateTimeZone('UTC')))->setDate($y, $m, $d);
echo $date->format('Y-m-d'), "\n"; // CONTROL! echo checkdate($m, $d, $y) ? $date->format('Y-m-d') : "invalid", "\n";
