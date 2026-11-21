<?php
declare(strict_types=1);
$n = (int)$argv[1];
file_put_contents("/tmp/bb_fd.txt", "x");
for ($i = 0; $i < $n; $i++) {
    $f = fopen("/tmp/bb_fd.txt", "r");
    fread($f, 1);
}
echo "done\n";
