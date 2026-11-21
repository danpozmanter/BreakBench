<?php
// LEVEL: LANGUAGE
declare(strict_types=1);

$a = ["x" => 1];
$b = $a;
$b["x"] = 9;
echo $a["x"], "\n";
