<?php
declare(strict_types=1);

$count = (int) $argv[1];
$total = 0;
$source = fopen('/dev/zero', 'rb');
for ($i = 0; $i < $count; $i++) {
    $message = fread($source, 4096);
    $total += strlen($message);
}
fclose($source);
echo $total, "\n";
