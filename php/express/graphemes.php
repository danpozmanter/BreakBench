<?php
// LEVEL: STD
declare(strict_types=1);

preg_match_all('/\X/u', "abcdefgh👍🏽xyz", $m);
echo implode("", array_slice($m[0], 0, 9)), "\n";
