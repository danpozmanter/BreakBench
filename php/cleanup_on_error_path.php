<?php

const SCRATCH = "/tmp/bb_scratch/export.csv";

function export_rows(array $rows): void
{
    file_put_contents(SCRATCH, "qty\n");
    foreach ($rows as $row) {
        if (!ctype_digit($row)) throw new InvalidArgumentException("invalid row $row"); // BREAK!
        // CONTROL! if (!ctype_digit($row)) { unlink(SCRATCH); throw new InvalidArgumentException("invalid row $row"); }
        file_put_contents(SCRATCH, intval($row) . "\n", FILE_APPEND);
    }
    unlink(SCRATCH);
}

try {
    export_rows(["3", "x", "5"]);
} catch (InvalidArgumentException $e) {
    echo "export failed\n";
}
