<?php
// LEVEL: LANGUAGE
declare(strict_types=1);

class KindA extends Exception {}
class KindB extends Exception {}

function step(bool $a): void
{
    try {
        throw $a ? new KindA() : new KindB();
    } catch (KindA) {
        echo "caught A\n";
    }
}

step(true);
try {
    step(false);
} catch (KindB) {
    echo "passed B\n";
}
