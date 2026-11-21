<?php
// LEVEL: LANGUAGE

declare(strict_types=1);

function parsePort(string $s): int|ValueError
{
    return ctype_digit($s) ? (int) $s : new ValueError("not a number: $s");
}

$r = parsePort("x");
echo $r instanceof ValueError ? "error" : $r, "\n";
