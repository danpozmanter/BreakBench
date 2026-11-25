<?php
declare(strict_types=1);

function size(int $n): string
{
    $label = "small";
    if ($n > 5); // CONTROL! if ($n > 5)
    {
        $label = "big";
    }
    return $label;
}

echo size((int)$argv[1]), "\n", size((int)$argv[2]), "\n";
