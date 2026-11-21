<?php
// LEVEL: LANGUAGE
declare(strict_types=1);

function next_value(): int
{
    static $n = 0;
    return ++$n;
}

function pair(int $a, int $b): string
{
    return "$a $b";
}

echo pair(next_value(), next_value()), "\n";
