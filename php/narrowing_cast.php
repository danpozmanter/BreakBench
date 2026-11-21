<?php
declare(strict_types=1);
$v = (int)$argv[1];
$b = unpack("C", pack("C", $v))[1];
echo $b, "\n";
