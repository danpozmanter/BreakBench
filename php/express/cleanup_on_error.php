<?php
// LEVEL: LANGUAGE
declare(strict_types=1);

function useIt(bool $fail): void
{
    try {
        if ($fail) {
            throw new RuntimeException("bad");
        }
    } finally {
        echo "released\n";
    }
}

useIt(false);
try {
    useIt(true);
} catch (RuntimeException) {
}
