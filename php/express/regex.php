<?php
// LEVEL: STD
declare(strict_types=1);

$a = preg_match('/^[a-z]+[0-9]{2}$/', "abc12") === 1;
$b = preg_match('/^[a-z]+[0-9]{2}$/', "abc1") === 1;
echo var_export($a, true), " ", var_export($b, true), "\n";
