<?php
declare(strict_types=1);

$f = fopen("/tmp/bb_close.txt", "w");
fwrite($f, "a");
fclose($f);
fwrite($f, "b");
echo "ok\n";
