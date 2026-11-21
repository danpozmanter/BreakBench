<?php
// LEVEL: LANGUAGE
declare(strict_types=1);

$buf = "";
for ($i = 0; $i < 100000; $i++) {
    $buf .= chr($i & 0xFF);
}
echo strlen($buf), "\n";
