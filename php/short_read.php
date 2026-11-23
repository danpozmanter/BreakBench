<?php
declare(strict_types=1);

$child = popen('printf HELLO-WO; sleep 0.2; printf RLD-1234', 'r');
$message = fread($child, 16);
pclose($child);
echo $message, "\n";
