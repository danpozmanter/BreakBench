<?php
declare(strict_types=1);
function write_report(): void
{
    throw new RuntimeException("disk full");
}

function close_log(): void
{
}

function save_report(): void
{
    try {
        write_report();
    } finally {
        close_log();
        return; // BREAK!
    }
}

try {
    save_report();
    echo "saved\n";
} catch (RuntimeException $e) {
    echo "failed\n";
}
