<?php
// LEVEL: LANGUAGE
declare(strict_types=1);

function work(): void
{
    try {
        throw new RuntimeException("boom");
    } finally {
        echo "cleanup\n";
    }
}

try {
    work();
} catch (RuntimeException) {
    echo "recovered\n";
}
