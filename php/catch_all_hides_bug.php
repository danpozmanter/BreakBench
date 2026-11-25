<?php

function parse_order(string $line): int
{
    $parts = explode(",", $line);
    $qty = filter_var($parts[2], FILTER_VALIDATE_INT); // BREAK!
    // CONTROL! $qty = filter_var($parts[1], FILTER_VALIDATE_INT);
    if ($qty === false) throw new InvalidArgumentException("invalid quantity in $line");
    return $qty;
}

try {
    echo parse_order("widget,5"), "\n";
} catch (Throwable $e) {
    echo "invalid order\n";
}
