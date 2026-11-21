<?php
// LEVEL: STD
declare(strict_types=1);

$path = "/tmp/bb_perm.txt";
if (file_exists($path)) {
    unlink($path);
}
$old = umask(0077);
fclose(fopen($path, "x"));
umask($old);
clearstatcache();
echo decoct(fileperms($path) & 0777), "\n";
unlink($path);
