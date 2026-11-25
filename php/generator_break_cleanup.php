<?php

const LOCK = "/tmp/bb_scratch/reader.lock";

function rows(): Generator
{
    file_put_contents(LOCK, "");
    try {
        yield "alpha";
        yield "beta";
        yield "gamma";
    } finally {
        unlink(LOCK);
    }
}

foreach (rows() as $line) {
    echo "$line\n";
    break;
}
