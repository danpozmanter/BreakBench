<?php
// LEVEL: STD
declare(strict_types=1);

$cause = new Exception("not found");
$e = new Exception("loading config: not found", 0, $cause);
echo $e->getMessage(), "\n", $e->getPrevious()->getMessage(), "\n";
