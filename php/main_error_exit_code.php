<?php

function main(): void
{
    $text = @file_get_contents("/nonexistent/bb.conf");
    if ($text === false) {
        fwrite(STDERR, "config missing\n");
        return; // BREAK!
        // CONTROL! exit(1);
    }
    echo strlen($text), "\n";
}

main();
