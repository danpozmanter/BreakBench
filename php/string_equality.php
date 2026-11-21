<?php
declare(strict_types=1);
$s = "ab" . $argv[1];
echo $s == "abc" ? "equal" : "different", "\n";
