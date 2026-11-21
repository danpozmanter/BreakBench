<?php
declare(strict_types=1);
$qty = isset($argv[1]) ? (int)$argv[1] : null;
if ($qty) {
    echo "have $qty\n";
} else {
    echo "missing\n";
}
