<?php

const LOCK = "/tmp/bb_scratch/run.lock";

function check_args(array $argv): bool
{
    if (in_array("--version", $argv, true)) {
        echo "1.0\n";
        exit(0); // BREAK!
        // CONTROL! return true;
    }
    return false;
}

file_put_contents(LOCK, "");
try {
    if (!check_args($argv)) echo "working\n";
} finally {
    unlink(LOCK);
}
