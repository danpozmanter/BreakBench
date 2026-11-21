<?php
// LEVEL: STD
declare(strict_types=1);

$p = proc_open(["false"], [], $pipes);
echo proc_close($p), "\n";
