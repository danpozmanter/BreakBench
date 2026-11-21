<?php
declare(strict_types=1);
$a = (int)$argv[1] !== 0;
$b = true;
$r = "unset";
if ($a)
    if ($b) $r = "both";
else
    $r = "not a";
echo $r, "\n";
