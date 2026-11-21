<?php
// LEVEL: LANGUAGE
declare(strict_types=1);

function inner(): array
{
    return debug_backtrace();
}

echo in_array("inner", array_column(inner(), "function"), true) ? "inner" : "missing", "\n";
