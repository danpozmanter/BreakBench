<?php
declare(strict_types=1);
$v = [1];
$r = &$v[0];
for ($i = 0; $i < 1000; $i++) $v[] = $i;
$w = [7];
$r = 99;
echo $w[0], "\n";
