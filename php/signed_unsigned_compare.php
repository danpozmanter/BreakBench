<?php
declare(strict_types=1);
$xs = [1, 2, 3];
$i = (int)$argv[1];
echo $i < count($xs) ? "less" : "not less", "\n";
