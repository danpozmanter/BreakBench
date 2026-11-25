<?php
declare(strict_types=1);

function totalUntilStop(array $codes): int
{
    $total = 0;
    foreach ($codes as $c) {
        $code = (int)$c;
        switch ($code) {
            case 0:
                break; // CONTROL! return $total;
            default:
                $total += $code;
        }
    }
    return $total;
}

echo totalUntilStop(array_slice($argv, 1)), "\n";
