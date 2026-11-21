<?php
declare(strict_types=1);
const HEADER = 5;

$message = $argv[1];
$payload = strlen($message) - HEADER;
if ($payload < 0) {
    echo "short\n";
} else {
    echo $payload, "\n";
}
