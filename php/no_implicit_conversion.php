<?php
declare(strict_types=1);

function show(int $n): void
{
    echo $n, "\n";
}

show((int)$argv[1]);
