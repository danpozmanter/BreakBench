<?php
declare(strict_types=1);

if (strcmp("x", "x")) { // CONTROL! if (strcmp("x", "x") === 0) {
    echo "same\n";
} else {
    echo "different\n";
}
