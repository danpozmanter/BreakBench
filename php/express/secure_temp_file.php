<?php
// LEVEL: STD
declare(strict_types=1);

$path = tempnam(sys_get_temp_dir(), "bb");
file_put_contents($path, "ok");
echo file_get_contents($path), "\n";
unlink($path);
