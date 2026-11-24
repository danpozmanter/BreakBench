<?php
declare(strict_types=1);
$x = (int)$argv[1];
if ($x = 1) { // CONTROL! if ($x === 1) {
    echo "one\n";
} else {
    echo "not one\n";
}
