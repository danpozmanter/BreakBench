<?php
// LEVEL: LANGUAGE
declare(strict_types=1);

function pair(): array
{
    return [1, "a"];
}

[$n, $s] = pair();
echo "$n $s\n";
