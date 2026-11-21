<?php
declare(strict_types=1);
$n = (int)$argv[1];
$heads = [];
$prefixes = [];
for ($i = 0; $i < $n; $i++) {
    $buf = str_repeat(chr($i & 255), 32768);
    $heads[] = substr($buf, 0, 16);
    $big = str_repeat(chr(97 + $i % 26), 32768);
    $prefixes[] = substr($big, 0, 16);
}
echo count($heads), "\n";
