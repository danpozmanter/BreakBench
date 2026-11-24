<?php
declare(strict_types=1);

$b = unpack("C", pack("C", 300))[1]; // CONTROL! $b = unpack("n", pack("n", 300))[1];
echo $b, "\n";
