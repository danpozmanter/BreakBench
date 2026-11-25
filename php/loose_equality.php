<?php
declare(strict_types=1);
$code = $argv[1];
echo $code == 0 ? "same" : "different", "\n"; // CONTROL! echo $code === "0" ? "same" : "different", "\n";
