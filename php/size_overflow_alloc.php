<?php
declare(strict_types=1);

$count = (int) $argv[1];
$size = $count * 8;
$records = str_repeat("\0", $size);
$records[8] = chr(99);
echo "stored\n";
