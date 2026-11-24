<?php
declare(strict_types=1);
$v = (int)$argv[1];
// CONTROL! if ($v < 0 || $v > 255) { echo "out of range\n"; exit(0); }
$b = unpack("C", pack("C", $v))[1];
echo $b, "\n";
